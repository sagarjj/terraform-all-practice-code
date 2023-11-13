resource "aws_instance" "myec2" {
   ami = "ami-01bc990364452ab3e"
   instance_type = var.instance_type
}