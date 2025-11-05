# Terraform configuration block
# This defines the minimum Terraform version and required providers

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

# AWS Provider configuration
# this tells terraform how to connect to aws
provider "aws" {
  region  = "eu-west-3"
  profile = "default"

  # default_tags {
  #  tags = {
  #   ManagedBy = "Terraform"
  #  }
  # }
}
