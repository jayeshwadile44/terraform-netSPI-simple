resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1c"
  
  tags = {
    Name = "NetSPI-Public-Subnet"
  }
}