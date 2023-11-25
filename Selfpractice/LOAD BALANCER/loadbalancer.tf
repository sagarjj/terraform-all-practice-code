resource "aws_lb" "myloadbalancer" {
    name = "my-web-loadbalancer"
    load_balancer_type = "application"
    subnets = [ "subnet-00ea777374bec464e","subnet-04aa3100fa5a0616e","subnet-05b441cc3646d81fa"]

  
}