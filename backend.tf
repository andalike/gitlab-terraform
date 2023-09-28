provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = ""
    key            = "terraformstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = ""
  }
}
