#CREATING INTERNATE GATEWAY 
resource "aws_internet_gateway" "demoGW" {
  vpc_id = aws_vpc.demovpc.id
  tags = {
    Name = "demoGW"
  }
}