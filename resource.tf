resource "aws_vpc" "av" {
    cidr-block = "10.0.0.0/16"
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