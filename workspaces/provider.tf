terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
  
    backend "s3" {
    bucket         = "ven-remote-state"
    key            = "workspaces"
    region         = "us-east-1"
    dynamodb_table = "terraform-remote-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}