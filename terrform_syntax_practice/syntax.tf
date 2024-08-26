terraform {
  required_providers {
    aws = {
        source = "hasicorp/aws"
        version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "my_bucket" {
  
}