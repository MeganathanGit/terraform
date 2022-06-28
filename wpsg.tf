resource "aws_security_group" "wpSG" {
name = "wpSG"
vpc_id = "${aws_vpc.demo-vpc.id}"
ingress {
description= "allow ssh"
from_port   = 22
to_port     = 22
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
description="allow http "
protocol    = "tcp"
from_port   = 80
to_port     = 80
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port   = 0
to_port     = 0
protocol    = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags ={
Name= "wpSG"
}
}
