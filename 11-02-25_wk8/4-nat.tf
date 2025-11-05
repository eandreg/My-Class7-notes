# Elastic IP for NAT Gateway
# NAT gateway needs a static
resource "aws_eip" "frenchy-nat-eip" {
  domain = "vpc"

  tags = {
    Name = "frenchy-nat-eip"
  }

  depends_on = [aws_internet_gateway.frenchy-igw] # explict dependency 
}

resource "aws_nat_gateway" "frenchy-nat-gateway" {
  allocation_id = aws_eip.frenchy-nat-eip.id # implict dependency for eip
  subnet_id     = aws_subnet.public-eu-west-3a.id

  tags = {
    Name = "frenchy-nat-gateway"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.frenchy-igw]
}