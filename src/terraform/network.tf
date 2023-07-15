resource "aws_vpc" "main" {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"
}

resource "aws_subnet" "main" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "10.0.1.0/24"
}

resource "aws_network_interface" "this" {
    subnet_id   = aws_subnet.main.id
    private_ips = ["172.16.10.100"]
}