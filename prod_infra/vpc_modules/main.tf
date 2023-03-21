terraform {
  required_version = ">0.12"
}

resource "aws_vpc" "main" {
  cidr_block=var.vpc_CIDR
  tags={
    Name="Main"
  }
}