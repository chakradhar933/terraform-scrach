resource "aws_vpc" "edstem-vpc" { #this name belongs to only terraform reference

    cidr_block       = var.cidr
    instance_tenancy = "default"
    tags = {
        Name = "automated-vpc" #this name belongs to AWS
    }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.edstem-vpc.id # it will fetch VPC ID created from above code
  cidr_block = var.cidr

  tags = var.tags
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.edstem-vpc.id # it will fetch VPC ID created from above code
  cidr_block = "10.0.2.0/24"

  tags = var.tags
}

resource "aws_internet_gateway" "automated-igw" {
  vpc_id = aws_vpc.edstem-vpc.id # internet gateway depends on VPC

  tags = var.tags
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.edstem-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.automated-igw.id
  }

  tags = var.tags
}

resource "aws_eip" "auto-eip" {

}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.auto-eip.id
  subnet_id     = aws_subnet.public.id

  tags = var.tags

  # To ensure proper ordering, it is recommended to add an explicit dependency
   #on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.automated-igw]
}

resource "aws_route_table" "private-rt" { #for private route we don't attach IGW, we attach NAT
  vpc_id = aws_vpc.edstem-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = var.tags
}


resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private-rt.id
}
