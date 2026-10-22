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

# Create a VPC
resource "aws_instance" "provd" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

}
