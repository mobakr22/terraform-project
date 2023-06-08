resource "aws_route_table" "Route_table" {
  vpc_id =  aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}
resource "aws_route_table_association" "exam" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.Route_table.id
}

