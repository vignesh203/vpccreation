resource "aws_vpc" "av" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "${var.ENVIRONMENT}-${var.PROJECT}-vpc"
    }
}
resource "aws_subnet" "as" {
  vpc_id     = aws_vpc.av.id
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.ENVIRONMENT}-${var.PROJECT}-SUBNET"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.av.id
  tags = {
    Name = "${var.ENVIRONMENT}-${var.PROJECT}-ag"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.av.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "${var.ENVIRONMENT}-${var.PROJECT}-rt"
  }
}