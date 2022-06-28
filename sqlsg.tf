resource "aws_security_group" "sqlSG" {
name = "sqlSG"
description = "managed  for mysql servers"
vpc_id = "${aws_vpc.demo-vpc.id}"
ingress {
protocol        = "tcp"
from_port       = 3306
to_port         = 3306
security_groups = ["${aws_security_group.wpSG.id}"]
}
egress {
from_port   = 0
to_port     = 0
protocol    = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags ={
Name= "sqlSG"
}
}