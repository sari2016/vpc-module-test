terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-aws-state"
    key    = "vpc_test" # you should have unique keys wit
    region = "us-east-1"
    dynamodb_table = "82s-aws-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}