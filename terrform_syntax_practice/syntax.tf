terraform {
  required_providers {
    aws = {
        source = "hasicorp/aws"
        version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket_name = var.bucket_name
}

data "aws_s3_bucket" "my_external_bucket" {
    bucket = "not-managed-by-us"
}

