# PROVIDER VARIABLES
variable "deploy_region" {
  type = string
  description = "Region that Alpha application gets deployed into"
  default = "us-east-1"
}

# DB VARIABLES
variable "db_name" {
  type = string
  description = "Name of RDS"
}

variable "engine" {
  type = string
  description = "Engine type of RDS"
  default = "postgres"
}

variable "instance_class" {
  type = string
  description = "RDS instance class"
  default = "db.t4g.micro"
}

variable "allocated_storage" {
  type = number
  description = "Allocated storage for RDS"
  default = 20
}

variable "storage_type" {
  type = string
  description = "RDS storage type"
  default = "gp3"
}

variable "storage_encrypted" {
  type = bool
  description = "Whether RDS database is encrypted with KMS"
  default = true
}

variable "skip_final_snapshot" {
  type = bool
  description = "Skip final snapshot of RDS when destroying"
  default = true
}

# SERVER VARIABLES
variable "ami" {
  type = string
  description = "EC2 instance image ami for application"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for application"
  default = "t3.micro"
}

variable "instance_tags" {
  type = map(string)
  description = "Application tags: name and description"
}

variable "assign_public_ip" {
  type = bool
  description = "Whether to assign the public ip for the application"
  default = true
}

variable "app_key" {
  type = string
  description = "Application key pair key name"
}

variable "app_key_tls_algorithm" {
  type = string
  description = "TLS algorithm for encryption"
  default = "RSA"
}

variable "app_key_tls_rsa" {
  type = number
  description = "Number of RSA bits"
  default = 4096
}

# VPC VARIABLES
variable "local_vpc_cidr" {
  type = string
  description = "CIDR block for VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "enable_dns_host" {
  type = bool
  description = "Whether to enable dns hostname for VPC"
  default = true
}

variable "igw_name" {
  type = string
  description = "Internet gateway name"
}

variable "db_subnet_group_name" {
  type = string
  description = "RDS database subnet group name"
}

variable "app_sg_name" {
  type = string
  description = "Application security group name"
}

variable "db_sg_name" {
  type = string
  description = "RDS security group name"
}

variable "app_ingress_cidr" {
  type = string
  description = "Ingress CIDR block for application"
  default = "209.203.79.110/32"
}

variable "app_ingress_port" {
  type = number
  description = "Ingress port for application security group"
  default = 80
}

variable "app_ingress_protocol" {
  type = string
  description = "Ingress IP protocol for application"
  default = "tcp"
}

variable "app_egress_cidr" {
  type = string
  description = "Egress CIDR block for application"
  default = "0.0.0.0/0"
}

variable "app_egress_protocol" {
  type = string
  description = "Egress IP protocol for application"
  default = "-1"
}

variable "db_ingress_cidr" {
  type = string
  description = "Ingress CIDR block for RDS"
  default = "10.0.2.0/23"
}

variable "db_ingress_port" {
  type = number
  description = "Ingress port for RDS"
  default = 5432
}

variable "db_ingress_protocol" {
  type = string
  description = "Ingress IP protocol for RDS"
  default = "tcp"
}

variable "priv_rtb_name" {
  type = string
  description = "Private subnet route table name"
}

variable "public_rtb_name" {
  type = string
  description = "Public subnet route table name"
}

