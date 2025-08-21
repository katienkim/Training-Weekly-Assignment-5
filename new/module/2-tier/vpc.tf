# create VPC
resource "aws_vpc" "vpc" {
    cidr_block = var.local_vpc_cidr
    tags = {
      Name = var.vpc_name
    }
    enable_dns_hostnames = var.enable_dns_host
}

# create IGW attach to vpc
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = var.igw_name
    }
}
 
# create private and public SUBNET
resource "aws_subnet" "private" {
    count = 4
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.${count.index+5}.0/24"
    availability_zone = count.index > 2 ? data.aws_availability_zones.available.names[1] : data.aws_availability_zones.available.names[0]
    tags = {
      Name = "alpha-priv-sub-${count.index+1}"
    }
}

resource "aws_subnet" "public" {
    count = 4
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.${count.index+1}.0/24"
    availability_zone = count.index > 2 ? data.aws_availability_zones.available.names[1] : data.aws_availability_zones.available.names[0]
    tags = {
      Name = "alpha-pub-sub-${count.index+1}"
    }
}

# create SUBNET GROUP
resource "aws_db_subnet_group" "default" {
  name       = var.db_subnet_group_name
  subnet_ids = [aws_subnet.private[0].id, aws_subnet.private[1].id]
}

# create app and db SECURITY GROUP
resource "aws_security_group" "app-sg" {
    name = var.app_sg_name
    vpc_id = aws_vpc.vpc.id
}

resource "aws_security_group" "db-sg" {
    name = var.db_sg_name
    vpc_id = aws_vpc.vpc.id
}

# egress and ingress rules for security group
resource "aws_vpc_security_group_ingress_rule" "sg-ingress" {
  security_group_id = aws_security_group.app-sg.id
  cidr_ipv4         = var.app_ingress_cidr
  from_port         = var.app_ingress_port
  ip_protocol       = var.app_ingress_protocol
  to_port           = var.app_ingress_port
}

resource "aws_vpc_security_group_egress_rule" "sg-egress" {
  security_group_id = aws_security_group.app-sg.id
  cidr_ipv4         = var.app_egress_cidr
  ip_protocol       = var.app_egress_protocol
}

resource "aws_vpc_security_group_ingress_rule" "sg-db-ingress" {
  security_group_id = aws_security_group.db-sg.id
  cidr_ipv4         = var.db_ingress_cidr
  from_port         = var.db_ingress_port
  ip_protocol       = var.db_ingress_protocol
  to_port           = var.db_ingress_port
}

# ROUTE TABLES
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id
  
  route {
    cidr_block = var.local_vpc_cidr 
  }
  tags = {
    Name = var.priv_rtb_name
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
    cidr_block = var.local_vpc_cidr
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = var.public_rtb_name
  }
}

resource "aws_route_table_association" "public" {
  count = 2
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}