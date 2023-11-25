resource "aws_lb_target_group_attachment" "my_target_group_attachment" {
    for_each = {
      server1 = aws_instance.ec2instance1.id
      server2 = aws_instance.ec2instance2.id
      server3 = aws_instance.ec2instance3.id
    }
    target_group_arn = aws_lb_target_group.my_target_group.arn
    target_id = each.value
    port = 80

}
  output "myoutput" {
    value = aws_lb.myloadbalancer.dns_name
    
  }