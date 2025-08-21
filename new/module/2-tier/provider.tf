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

# list of available az's
data "aws_availability_zones" "available" {
  state = "available"
}