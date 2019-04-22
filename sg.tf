resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    #cidr_blocks = # add your IP address here
  }

  tags = {
    Name = "allow_ssh"
  }
}
