provider "aws" {
  region     = "us-west-2"
}

resource "aws_iam_user" "iam" {
  for_each = toset( ["user-00","user-01","user-02", "user-03"] )
  name     = each.key
}