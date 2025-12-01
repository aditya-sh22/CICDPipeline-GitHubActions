terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {   
  region = "eu-north-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "github-actions-buckeet-35612232"  # Change to a globally unique name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}