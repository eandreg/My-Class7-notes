resource "aws_internet_gateway" "frenchy-igw" {
  vpc_id = aws_vpc.frenchy-vpc.id

  tags = {
    Name    = "frenchy-igw"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}
