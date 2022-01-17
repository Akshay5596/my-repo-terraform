#security group
resource "aws_security_group" "demo_sg" {
  name   = "demo-sg"
  vpc_id = aws_vpc.demovpc.id

   tags = {
    Name = "demo-sg"
  }
}

# Ingress Security rule for Port 22
resource "aws_security_group_rule" "ssh_inbound_access" {
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.demo_sg.id
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = [aws_vpc.demovpc.cidr_block]
}

# Ingress Security rule for Port 80
resource "aws_security_group_rule" "http_inbound_access" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.demo_sg.id
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = [aws_vpc.demovpc.cidr_block]
}

# All OutBound Access
resource "aws_security_group_rule" "all_outbound_access" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.demo_sg.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}