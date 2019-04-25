resource "aws_instance" "web1" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.tf-example.key_name}"

  security_groups = ["${aws_security_group.allow_ssh.id}",
    "${aws_security_group.allow_http.id}",
    "${aws_security_group.allow_https.id}",
  ]

  tags {
    Name = "${var.ami_name}"
  }

  associate_public_ip_address = true

  subnet_id = "${aws_subnet.subnet-1.id}"
}
