provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami           = "ami-01bc990364452ab3e"
  instance_type = "t2.micro"
  key_name      = "CICD"
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./cicdd2.pem")
    host        = self.public_ip
  }
   provisioner "file" {
    source      = "./tomcatinstall.sh"
    destination = "/tmp/tomcatinstall.sh"
   }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/tomcatinstall.sh",
      "/tmp/tomcatinstall.sh",
      
    ]

  }
}
output "public_ip" {
    value = "${aws_instance.myec2.public_ip}:8080"
  }
