resource "aws_lb_target_group" "my_target_group" {
  name     = "my-target-group"
  port     = 80
   vpc_id  = "vpc-0fef7d4a21c611068"
  protocol = "HTTP"
  health_check {
    path                = "/"
    protocol            = "HTTP"
    port                = "traffic-port"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
  }
}
