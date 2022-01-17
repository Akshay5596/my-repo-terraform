#CREATING PABLIC ROUTE TABLE
resource "aws_route_table" "public_route" {
      vpc_id = aws_vpc.demovpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demoGW.id
  }
  tags = {
    Name = "public-route"
  }
}