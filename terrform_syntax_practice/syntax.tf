terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# actively managed by us
resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name
}

# Managed somewhere else, but we want to use it in our project
data "aws_s3_bucket" "my_external_bucket" {
    bucket = "not-managed-by-us"
}

variable "bucket_name" {
  type        = string
  description = "My variable used to set bucket name"
  default     = "my_default_bucket_name"
}

output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

# outputs local variable, note that the object is singular here
output "local_var" {
  value = local.local_example
}

# note that the name of the block here is plural
locals {
  local_example = "This is a local variable"
}


module "my_module" {
  source = "./module-example"
}