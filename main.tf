terraform {
 /* required_version = "~>0.12.23"

  backend "s3" {
    bucket = "teal-tf-envs"
    key = "tf_state"
    region = "eu0-west-1"
    dynamodb_table = "teal-tf-envs"
    profile = "teal-mgmt"
  }*/
  required_providers {
    aws = "~> 2.8"
  }
}

provider "aws" {
  region = "eu-west-1"
  profile = "nonprod"

  assume_role {
    role_arn = "arn:aws:iam::009011612032:role/Terra-Role"
  }
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = "oketunji-bucket"
  acl = "private"
}
