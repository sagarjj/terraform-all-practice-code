provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-05a5f6298acdb05b6"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
    lifecycle {
      create_before_destroy = true
    }
}