#CREATING NAT GATEWAY
resource "aws_nat_gateway" "NGW" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "NGW"
  }
}