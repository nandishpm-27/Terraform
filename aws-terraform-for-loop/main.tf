provider "aws" {
   region     = "us-east-1"
   access_key = "AKIAVLHJWLEFWCLCXFMU"
   secret_key = "riCteMH4xnVw8ycmcWy3z3CYNCskCKhvAJGg1Bl+"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-00b3e95ade0a05b9b"
   instance_type = "t2.micro"
   count         = 1

   tags = {
           Name  = "Terraform EC2"
   }
}

output "print_the_names" {
  value = [for name in var.user_names : name]
}

variable "user_names" {
   description = "IAM usernames"
   type        = list(string)
   default     = ["user1", "user2", "user3"]
}