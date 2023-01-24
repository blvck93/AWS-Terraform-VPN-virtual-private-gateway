resource "aws_vpc" "lab-vpc-1" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"

  tags = {
    Name = "lab-vpc-1"
  }
}

resource "aws_subnet" "lab-subnet-prv" {
  vpc_id                  = aws_vpc.lab-vpc-1.id
  cidr_block              = var.private_subnets[0]
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.AWS_REGION}a"

  tags = {
    Name = "lab-subnet-prv"
  }
}

resource "aws_default_route_table" "lab-rt-1" {
  default_route_table_id = aws_vpc.lab-vpc-1.default_route_table_id
  propagating_vgws       = [aws_vpn_gateway.lab-vgw-1.id]

  tags = {
    Name = "lab-rt-1"
  }
}

resource "aws_route_table_association" "lab-associate-prv" {
  subnet_id      = aws_subnet.lab-subnet-prv.id
  route_table_id = aws_default_route_table.lab-rt-1.id
}
