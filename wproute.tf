resource "aws_route_table" "wproute" {
vpc_id = "${aws_vpc.demo-vpc.id}"
route {
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.wpgw.id}"
}
tags = {
Name = "wproute"
}
}

resource "aws_route_table_association" "sub1" {
subnet_id      = aws_subnet.wpsubnet.id
route_table_id = aws_route_table.wproute.id
}
