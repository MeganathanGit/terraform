resource "aws_instance" "mysql_OS" {
ami           = "ami-08706cb5f68222d09"
instance_type = "t2.micro"
subnet_id = "${aws_subnet.sqlsubnet.id}"
vpc_security_group_ids = ["${aws_security_group.sqlSG.id}"]

tags ={
Name= "mysql_OS"
}
}
