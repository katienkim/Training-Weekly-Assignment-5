# --- Create EC2 instance that hosts Alpha application ---
resource "aws_instance" "app-server" {
    ami = var.ami
    instance_type = var.instance_type
    tags = var.instance_tags
    key_name = aws_key_pair.app-key-pair.id
    
    # configure app vpc
    vpc_security_group_ids = [ aws_security_group.app-sg.id ]
    # attach to public subnetet
    subnet_id = aws_subnet.public[0].id
    # attach app sg
    security_groups = [ aws_security_group.app-sg.id ]
    # public ip address will be assigned
    associate_public_ip_address = var.assign_public_ip
}

# --- Create EC2 instance key pair ---
resource "aws_key_pair" "app-key-pair"{
    key_name = var.app_key
    public_key = trimspace(tls_private_key.this.public_key_openssh)
}

# --- Configuration for TLS encryption of EC2 instance key pair ---
resource "tls_private_key" "this" {
  algorithm = var.app_key_tls_algorithm
  rsa_bits  = var.app_key_tls_rsa
}