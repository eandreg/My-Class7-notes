# this makes vpc.id which is aws_vpc.frenchy-vpc.id
resource "aws_vpc" "frenchy-vpc" {
  cidr_block           = "10.109.0.0/16"
  instance_tenancy     = "default" # optional, default option is setting this argument to default
  enable_dns_hostnames = true
  enable_dns_support   = true # optional, defaults to true 

  tags = {
    Name    = "frenchy-vpc"
    Service = "vpc"
    Owner   = "Dennis"
    Planet  = "Planet-Rock"
  }
}
