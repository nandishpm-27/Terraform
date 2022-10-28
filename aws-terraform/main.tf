provider "aws" {
    region = "eu-central-1"
    access_key = "AKIAVLHJWLEFQLG5V2UN"
    secret_key = "u4MjM/DaPHK2fpRl0BVFiWTJp/8ON5p8FXMu7SSn"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0767046d1677be5a0"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }
}