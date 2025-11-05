########################## Public subnets ##########################


resource "aws_subnet" "public-eu-west-3a" {
  vpc_id = aws_vpc.frenchy-vpc.id
  # step 1: make VPC
  # step 2: get VPC ID
  # step 3: add VPC ID into vpc_id argument in this subnet 
  # which VPC to create subnet in

  cidr_block              = "10.109.1.0/24"
  availability_zone       = "eu-west-3a" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name    = "public-eu-west-3a"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}

resource "aws_subnet" "public-eu-west-3b" {
  vpc_id                  = aws_vpc.frenchy-vpc.id
  cidr_block              = "10.109.2.0/24"
  availability_zone       = "eu-west-3b" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name    = "public-eu-west-3b"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}

resource "aws_subnet" "public-eu-west-3c" {
  vpc_id                  = aws_vpc.frenchy-vpc.id
  cidr_block              = "10.109.3.0/24"
  availability_zone       = "eu-west-3c" # specify AZ 
  map_public_ip_on_launch = true         # allow public IPs to be assigned 

  tags = {
    Name    = "public-eu-west-3c"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}


########################## Private subnets ##########################

resource "aws_subnet" "private-eu-west-3a" {
  vpc_id                  = aws_vpc.frenchy-vpc.id
  cidr_block              = "10.109.11.0/24"
  availability_zone       = "eu-west-3a" # specify AZ 
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-eu-west-3a"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}

resource "aws_subnet" "private-eu-west-3b" {
  vpc_id                  = aws_vpc.frenchy-vpc.id
  cidr_block              = "10.109.12.0/24"
  availability_zone       = "eu-west-3b" # specify AZ 
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-eu-west-3b"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}

resource "aws_subnet" "private-eu-west-3c" {
  vpc_id                  = aws_vpc.frenchy-vpc.id
  cidr_block              = "10.109.13.0/24"
  availability_zone       = "eu-west-3c" # specify AZ 
  map_public_ip_on_launch = false

  tags = {
    Name    = "private-eu-west-3c"
    Service = "application1"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}