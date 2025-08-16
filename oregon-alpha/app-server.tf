resource "aws_instance" "app-server" {
    ami = "ami-0efdf839508ec2995"
    instance_type = "t3.micro"
    tags = {
        Name = "alpha-us-west-2-app-server"
        Description = "Alpha AppServer"
    }
    key_name = aws_key_pair.app-key-pair.id
    
    # configure app vpc
    vpc_security_group_ids = [ aws_security_group.app-sg.id ]
    # attach to public subnetet
    subnet_id = aws_subnet.public[0].id
    # attach app sg
    security_groups = [ aws_security_group.app-sg.id ]
    # public ip address will be assigned
    associate_public_ip_address = true
}

resource "aws_key_pair" "app-key-pair"{
    key_name = "alpha-us-west-2-key"
    public_key = trimspace(tls_private_key.this.public_key_openssh)
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}