provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  
}



resource "aws_instance" "name" {
    key_name = "'jenkins (2).pem'.pem"
    ami = "ami-0a0e5d9c7acc336f1"
    instance_type = "t2.micro"
    tags = {
      Name = "Server-1"
    }
  
}

