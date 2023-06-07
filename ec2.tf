resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
  }
}

resource "aws_vpc" "server" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "server" {
  vpc_id                  = aws_vpc.server.id
  cidr_block              = var.subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.aws_az

  tags = {
    Name = var.subnet_name
  }
}
