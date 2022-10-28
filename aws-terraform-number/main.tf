provider "aws" {
   region     = "us-east-1"
   access_key = "AKIAVLHJWLEFWCLCXFMU"
   secret_key = "riCteMH4xnVw8ycmcWy3z3CYNCskCKhvAJGg1Bl+"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-00b3e95ade0a05b9b"
   instance_type = "t2.micro"
   count         = var.instance_count 
   tags = {
           Name  = "Terraform EC2"
   }
}

variable "instance_count" {
   description = "Ec2 Instance count"
   type        = number
   default     = 2
}