resource "aws_internet_gateway" "wpgw" {
vpc_id = "${aws_vpc.demo-vpc.id}"
tags = {
Name = "wpgw"
}
}
