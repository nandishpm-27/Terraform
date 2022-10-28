provider "aws" {
   region     = "us-east-1"
   access_key = "AKIAVLHJWLEFWCLCXFMU"
   secret_key = "riCteMH4xnVw8ycmcWy3z3CYNCskCKhvAJGg1Bl+"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-00b3e95ade0a05b9b"
   instance_type = "t2.micro"
   count         = 1
   associate_public_ip_address = var.enable_public_ip

   tags = {
           Name  = "Terraform EC2"
   }
}

variable "enable_public_ip" {
   description = "Enable public IP Address"
   type        = bool
   default     = true
}