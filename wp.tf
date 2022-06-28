resource "aws_instance" "wordpress_OS"{

ami           = "ami-000cbce3e1b899ebd"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.wpsubnet.id}"
vpc_security_group_ids = ["${aws_security_group.wpSG.id}"]

tags ={
Name= "wordpress_OS"
}
user_data = <<EOF
#! /bin/bash
sudo apt-get update -y
sudo apt upgrade -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
EOF
}

