resource "aws_security_group" "myec2-sg" {
    name = "myec2-sg"
    ingress {
        description = "Allow in bound traffice"
        from_port = local.port_number
        to_port = local.port_number
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
}
locals {
  port_number = 8443
}
output "sg_id" {
    value = aws_security_group.myec2-sg.id
  
}