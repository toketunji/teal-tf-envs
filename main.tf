terraform {
  required_providers {
    aws = "~> 2.8"
  }
}

provider "aws" {
  region = "eu-west-1"
  profile = "teal"
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "tealoket-bucket"
  acl = "private"
}
