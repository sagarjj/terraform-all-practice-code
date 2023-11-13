resource "aws_instance" "myec2" {
   ami = "ami-01bc990364452ab3e"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}