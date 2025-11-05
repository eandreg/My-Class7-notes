########################## Public route ##########################

resource "aws_route_table" "public-frenchy-rtb" {
  vpc_id = aws_vpc.frenchy-vpc.id

  # default gateway route 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.frenchy-igw.id
  }

  tags = {
    Name = "public-frenchy-rtb"
    Type = "public"
  }
}

resource "aws_route_table_association" "public-eu-west-3a" {
  subnet_id      = aws_subnet.public-eu-west-3a.id
  route_table_id = aws_route_table.public-frenchy-rtb.id
}

resource "aws_route_table_association" "public-eu-west-3b" {
  subnet_id      = aws_subnet.public-eu-west-3b.id
  route_table_id = aws_route_table.public-frenchy-rtb.id
}

resource "aws_route_table_association" "public-eu-west-3c" {
  subnet_id      = aws_subnet.public-eu-west-3c.id
  route_table_id = aws_route_table.public-frenchy-rtb.id
}



########################## Private route ##########################
resource "aws_route_table" "private-frenchy-rtb" {
  vpc_id = aws_vpc.frenchy-vpc.id

  # default gateway route 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.frenchy-nat-gateway.id
  }

  tags = {
    Name = "private-frenchy-rtb"
    Type = "private"
  }
}

resource "aws_route_table_association" "private-eu-west-3a" {
  subnet_id      = aws_subnet.private-eu-west-3a.id
  route_table_id = aws_route_table.private-frenchy-rtb.id
}

resource "aws_route_table_association" "private-eu-west-3b" {
  subnet_id      = aws_subnet.private-eu-west-3b.id
  route_table_id = aws_route_table.private-frenchy-rtb.id
}

resource "aws_route_table_association" "private-eu-west-3c" {
  subnet_id      = aws_subnet.private-eu-west-3c.id
  route_table_id = aws_route_table.private-frenchy-rtb.id
}