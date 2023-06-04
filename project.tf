
terraform {
  backend "s3" {
  bucket = "bakr-bucket"
  key    = "state"
  region = "us-east-1"
  dynamodb_table = "terraform-lock"
  }
}


provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"
}


resource "aws_subnet" "priv_sub" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "192.168.2.0/24"
}


resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "192.168.1.0/24"
}


resource "aws_instance" "APP_instance" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.pub_sub.id
}


resource "aws_instance" "DB_instance" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.priv_sub.id
}


resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.my_vpc.id
}


resource "aws_route_table" "my_RT" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gw.id
  }
}



resource "aws_route_table_association" "a_pub_sub" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.my_RT.id
}
