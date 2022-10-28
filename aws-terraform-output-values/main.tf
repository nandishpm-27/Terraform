provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVLHJWLEFWCLCXFMU"
    secret_key = "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"
}

resource "aws_instance" "ec2_expample" {
  
   ami              = "ami-00b3e95ade0a05b9b"
   instance_type    = "t2.micro"

   tags = {
            Name = "test - Terrafom EC2"
   }
}

output "my_console_output" {
    value = aws_instance.ec2_expample.public_ip
    sensitive = false/true
}