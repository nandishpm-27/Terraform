provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVLHJWLEFWCLCXFMU"
    secret_key = "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"
}

locals {
  staging_env = "staging"
}

resource "aws_vpc" "staging-vpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-vpc-tag"
  }
}

resource "aws_subnet" "staging-subnet" {
  vpc_id = aws_vpc.staging-vpc.id
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-subnet-tag"
  }
}

resource "aws_instance" "ec2_expample" {
  
   ami              = "ami-00b3e95ade0a05b9b"
   instance_type    = "t2.micro"
   subnet_id        = aws_subnet.staging-subnet.id

   tags = {
            Name = "${local.staging_env} - Terrafom EC2"
   }
}