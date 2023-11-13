provider "aws" {
    region = "us-east-1"
}
resource "aws_eip" "myip" {
    domain = "vpc"
}
output "public-ip" {
    value = "https://${aws_eip.myip.public_ip}:8080"
}