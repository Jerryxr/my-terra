terraform {
  required_version = "~> 1.1"
  required_providers {
    aws = {
      version = "~>3.1"
    }
  }
}
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region_name
}
 
variable "access_key"{
   type = string
}
variable "secret_key"{
   type = string
}
variable "region_name"{
   type = string
   default = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami                    = "ami-03f0544597f43a91d"
  instance_type          = "t2.micro"
  tags = {
    Name = "terraform1"
  }
}
