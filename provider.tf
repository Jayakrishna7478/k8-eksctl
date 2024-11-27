terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }
  }
  backend "s3" {
    bucket = "aws-state-dev"
     key    = "eks"
     region = "us-east-1"
     dynamodb_table = "aws-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}