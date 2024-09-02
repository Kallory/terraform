terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  
}

# create VPC
resource "aws_vpc" "resources_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = "resources_vpc_terraform_project"
}

# create public subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.resources_vpc
    cidr_block = "10.0.0.0/24"
}

# private subnet has no explicity cidr block
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.resources_vpc
}

# create IGW
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.resources_vpc
}