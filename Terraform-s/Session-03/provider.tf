terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3" {
    bucket = "timing-remotestate-backend"
    key    = "timing"
    region = "us-east-1"
    dynamodb_table = "timing-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  
}
