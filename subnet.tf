data "aws_availability_zones" "available" {}

resource "aws_subnet" "subnet-1" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags = {
    Name = "Subnet-2"
  }
}

resource "aws_subnet" "subnet-3" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[2]}"

  tags = {
    Name = "Subnet-3"
  }
}

resource "aws_route_table" "route-table-main-vpc" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main-vpc-igw.id}"
  }

  tags {
    Name = "route-table-main-vpc"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.subnet-1.id}"
  route_table_id = "${aws_route_table.route-table-main-vpc.id}"
}
