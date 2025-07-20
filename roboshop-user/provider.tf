

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }
  backend "s3" {
    bucket         = "remote-state-locking-1"
    key            = "vpc"
    region         = "us-east-1"
    dynamodb_table = "roboshop-locking-state"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}