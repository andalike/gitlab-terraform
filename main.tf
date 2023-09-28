resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet_cidr1

  tags = {
    Name = "sn1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.subnet_cidr2

  tags = {
    Name = "sn2"
  }
}