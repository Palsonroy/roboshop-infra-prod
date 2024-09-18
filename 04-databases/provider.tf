
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0" #AWS provider version, not terraform version
    }
  }


  backend "s3" {
    bucket         = "daws66s-state-prod" # you should create this s3 bucket
    key            = "databases"
    region         = "us-east-1"
    dynamodb_table = "daws66s-locking-prod" # you should create the table in dynamoDB
  }
}



provider "aws" {
  # Configuration options
  region = "us-east-1"
}
