resource "aws_instance" "ec2instance1" {
    ami = "ami-06d4b7182ac3480fa"
    instance_type = "t2.micro"
    key_name = "CICDO"
    user_data = var.user_data_script_1
}
resource "aws_instance" "ec2instance2" {
    ami = "ami-06d4b7182ac3480fa"
    instance_type = "t2.micro"
    key_name = "CICDO"
    user_data = var.user_data_script_2
}
resource "aws_instance" "ec2instance3" {
    ami = "ami-06d4b7182ac3480fa"
    instance_type = "t2.micro"
    key_name = "CICDO"
    user_data = var.user_data_script_3
}