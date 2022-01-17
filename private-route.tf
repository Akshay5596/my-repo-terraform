#creating private route table
resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.demovpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NGW.id
  }
  tags = {
    Name = "private-route"
  }
}