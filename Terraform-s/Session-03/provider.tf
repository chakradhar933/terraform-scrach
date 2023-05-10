terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3" {
    bucket = "edstem-project933"
    key    = "project"
    region = "us-east-1"
    dynamodb_table = "edstem-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  
}
