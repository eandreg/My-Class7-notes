resource "aws_security_group" "frenchy-sg" {
  name        = "frenchy-sg"
  description = "Allow inbound traffic and all outbound traffic to frenchy-sg"
  vpc_id      = aws_vpc.frenchy-vpc.id

  tags = {
    Name = "frenchy-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "frenchy-sg-ssh" {
  security_group_id = aws_security_group.frenchy-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "frenchy-sg-http" {
  security_group_id = aws_security_group.frenchy-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "frenchy-sg-allICMP-IPv4" {
  security_group_id = aws_security_group.frenchy-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "frenchy-sg-allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.frenchy-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}