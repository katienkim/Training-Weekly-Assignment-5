# list of available az's
data "aws_availability_zones" "available" {
  state = "available"
}

# create VPC
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "alpha-us-west-2-vpc"
    }
    enable_dns_hostnames = true
}

# create IGW attach to vpc
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "alpha-us-west-2-igw"
    }
}
 
# create private and public SUBNET
resource "aws_subnet" "private" {
    count = 2
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.${count.index+2}.0/24"
    availability_zone = data.aws_availability_zones.available.names[count.index]
    tags = {
      Name = "alpha-priv-sub-${count.index+1}"
    }
}

resource "aws_subnet" "public" {
    count = 2
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.${count.index}.0/24"
    availability_zone = data.aws_availability_zones.available.names[count.index]
    tags = {
      Name = "alpha-pub-sub-${count.index+1}"
    }
}

# create SUBNET GROUP
resource "aws_db_subnet_group" "default" {
  name       = "alpha-db-subnet-group"
  subnet_ids = [aws_subnet.private[0].id, aws_subnet.private[1].id]
}

# create app and db SECURITY GROUP
resource "aws_security_group" "app-sg" {
    name = "alpha-us-west-2-app-sg"
    vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group" "db-sg" {
    name = "alpha-us-west-2-db-sg"
    vpc_id = aws_vpc.vpc.id
}

# egress and ingress rules for security group
resource "aws_vpc_security_group_ingress_rule" "sg-ingress" {
  security_group_id = aws_security_group.app-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "sg-egress" {
  security_group_id = aws_security_group.app-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_ingress_rule" "sg-db-ingress" {
  security_group_id = aws_security_group.db-sg.id
  cidr_ipv4         = aws_vpc.vpc.cidr_block
  from_port         = 5432
  ip_protocol       = "tcp"
  to_port           = 5432
}

# ROUTE TABLES
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id
  
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }
  tags = {
    Name = "alpha-us-west-2-priv-rtb"
  }
}

resource "aws_route_table_association" "private" {
  count = 2
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id
  
  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "alpha-us-west-2-pub-rtb"
  }
}

resource "aws_route_table_association" "public" {
  count = 2
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}