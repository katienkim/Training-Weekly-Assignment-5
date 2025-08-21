# PROVIDER VARIABLES
variable "deploy_region" {
  type = string
  description = "Region that Alpha application gets deployed into"
}

# DB VARIABLES
variable "db_name" {
  type = string
  description = "Name of RDS"
}

# SERVER VARIABLES
variable "ami" {
  type = string
  description = "EC2 instance image ami for application"
}

variable "instance_tags" {
  type = map(string)
  description = "Application tags: name and description"
}

variable "app_key" {
  type = string
  description = "Application key pair key name"
}

# VPC VARIABLES
variable "vpc_name" {
  type = string
  description = "VPC name"
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

variable "priv_rtb_name" {
  type = string
  description = "Private subnet route table name"
}

variable "public_rtb_name" {
  type = string
  description = "Public subnet route table name"
}

