resource "aws_instance" "web1" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name      = "${var.ami_key_pair_name}"

  security_groups = ["${aws_security_group.allow_ssh.id}",
    "${aws_security_group.allow_http.id}",
    "${aws_security_group.allow_https.id}",
  ]

  tags {
    Name = "${var.ami_name}"
  }

  subnet_id = "${aws_subnet.subnet-1.id}"
}
