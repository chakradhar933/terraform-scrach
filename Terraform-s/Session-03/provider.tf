terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "edstem-project933"
    region = "us-east-1"
    dynamodb_table = "edstem-lock"
  }
}

## Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}