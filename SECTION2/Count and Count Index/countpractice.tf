provider "aws" {
    region = "us-east-1"
}
resource "aws_iam_user" "devuser" {
name = var.developer[count.index]
path = "/system"
count = 3
}  