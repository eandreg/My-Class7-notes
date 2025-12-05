terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

####################################
# this will store the state file
terraform {
  backend "s3" {
    bucket = "11.30.25-class7-droppin-buckets"  # bucket made in the console must be a globally unique name
    key    = "state/113025/terraform.tfstate" # key here means the name of the terraform state file, has to be in the same location that the bucket is located and will be the actual name in the S3 bucket. if you hadd folders, they will be represented in the s# bucket once terraform apply is ran, and creates infrastructure. the last portion of the key value(right next to the closing quotation mark) will be the name of the key. try to make that == terraform.tfstate for consistency
    region = "us-east-1" # this is optional this doesn't need to be in the same place as were we are building infrastructure
  }
}
####################################

# Configuration options
# this tells Terraform how to connect to AWS
provider "aws" {
  region  = "us-east-1" # the default place where we are building infrastructure
  profile = "default"

  # # Default tags are applied to all resources created by this provider
  #   default_tags {
  #     tags = {
  #       ManagedBy = "Terraform"
  #     }
  #   }
}