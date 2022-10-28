provider "aws" {
   region     = "us-east-1"
   access_key = "AKIAVLHJWLEFWCLCXFMU"
   secret_key = "riCteMH4xnVw8ycmcWy3z3CYNCskCKhvAJGg1Bl+"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-00b3e95ade0a05b9b"
   instance_type =  var.instance_type

   tags = {
           Name = "Terraform EC2"
   }
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}