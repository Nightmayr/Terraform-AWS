resource "aws_key_pair" "tf-example" {
  key_name   = "tf-example"
  public_key = "${file("files/tf-example.pub")}"
}
