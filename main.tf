terraform {
  required_providers {
    aws = "~> 2.8"
  }
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "oketunji-bucket"
  acl = "private"
}
