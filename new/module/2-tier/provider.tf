# --- Configure providers for this terraform project ---
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.deploy_region
  profile = "default"
}

# List of available az's (called to define subnets)
data "aws_availability_zones" "available" {
  state = "available"
}