terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not Terraform version
    }
  }

  backend "s3" {
    bucket         = "daws76s-remote-state"
    key            = "eksctl"
    region         = "us-east-1"
    dynamodb_table = "daws76s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
