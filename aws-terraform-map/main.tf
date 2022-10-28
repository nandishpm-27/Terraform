provider "aws" {
   region     = "us-east-1"
   access_key = "AKIAVLHJWLEFWCLCXFMU"
   secret_key = "riCteMH4xnVw8ycmcWy3z3CYNCskCKhvAJGg1Bl+"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-00b3e95ade0a05b9b"
   instance_type = "t2.micro"

   tags =  var.project_environment
}

variable "project_environment" {
   description = "project name and environment"
   type        = map(string)
   default     = {
      project     ="project-alpha",
      environment = "dev"
   }
}