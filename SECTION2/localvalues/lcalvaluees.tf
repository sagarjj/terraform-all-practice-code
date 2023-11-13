provider "aws" {
    region = "us-east-1"
}
locals {
  common_tag = {
   Owner = "Devops Team"
   service = "back end"
  }
}
resource "aws_instance" "app-dev" {
    ami = "ami-082b5a644766e0e6f"
    instance_type = "t2.micro"
    tags = local.common_tag
    }  
resource "aws_instance" "app-test" {
    ami = "ami-082b5a644766e0e6f"
    instance_type = "t2.micro"
    tags = local.common_tag
    }  
resource "aws_instance" "app-prod" {
    ami = "ami-082b5a644766e0e6f"
    instance_type = "t2.micro"
    tags = local.common_tag
    }  
resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags = local.common_tag
}    