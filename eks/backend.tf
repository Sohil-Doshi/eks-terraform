terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-file-six-tier-fleet-management-app"
    key    = "test/aws_infra"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt = true 
  }
}

provider "aws" {
  region  = var.aws-region
}
