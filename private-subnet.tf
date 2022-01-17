#creating private subnet
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.10.3.0/24"

  tags = {
    Name = "private_subnet_1"
  }
}

#creating private subnet
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet_2"
  }
}