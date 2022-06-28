resource "aws_subnet" "wpsubnet" {
vpc_id     = "${aws_vpc.demo-vpc.id}"
cidr_block = "192.163.0.0/24"
map_public_ip_on_launch="true"
tags = {
Name = "wpsubnet"
}
}
