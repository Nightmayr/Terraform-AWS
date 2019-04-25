resource "aws_internet_gateway" "main-vpc-igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "main-vpc-igw"
  }
}
