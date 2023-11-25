variable "user_data_script_1" {
  default = <<EOF
#!/bin/bash
sudo su
yum install httpd -y 
cd /var/www/html
echo "<html><h1> Welcome to AWS cloud :: Server 1 " > index.html
systemctl start httpd
EOF
}

variable "user_data_script_2" {
  default = <<EOF
#!/bin/bash
sudo su
yum install httpd -y 
cd /var/www/html
echo "<html><h1> Welcome to AWS cloud :: Server 2 " > index.html
systemctl start httpd
EOF
}
variable "user_data_script_3" {
  default = <<EOF
#!/bin/bash
sudo su
yum install httpd -y 
cd /var/www/html
echo "<html><h1> Welcome to AWS cloud :: Server 3 " > index.html
systemctl start httpd
EOF
}
variable "instance_ids" {
  default = []
}
