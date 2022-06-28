resource "aws_vpc" "demo-vpc" {
cidr_block       = "192.163.0.0/16"
instance_tenancy = "default"
tags = {
Name = "demo-vpc"
}
}
