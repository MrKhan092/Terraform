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
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-tf-first-bucket-kaif-2026"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
