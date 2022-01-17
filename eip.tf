#CREATING ELASTIC IP
resource "aws_eip" "eip" {
  vpc      = true
}