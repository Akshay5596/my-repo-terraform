#creating public subnet
resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name = "public_subnet_1"
  }
}
#creating public subnet
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.demovpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet_2"
  }
}