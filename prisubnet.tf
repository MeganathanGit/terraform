resource "aws_subnet" "sqlsubnet" {
vpc_id     = "${aws_vpc.demo-vpc.id}"
cidr_block = "192.163.1.0/24"
tags = {
Name = "sqlubnet"
}
}
