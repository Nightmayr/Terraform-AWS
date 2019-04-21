resource "aws_subnet" "subnet-1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Subnet-2"
  }
}

resource "aws_subnet" "subnet-3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "Subnet-3"
  }
}