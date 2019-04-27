resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all outgoing
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_https" {
  name        = "allow_https"
  description = "Allow HTTPS"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
  }

  tags = {
    Name = "allow_https"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }

  tags = {
    Name = "allow_http"
  }
}

resource "aws_security_group" "allow_icmp" {
  name        = "allow_icmp"
  description = "Allow ICMP"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
