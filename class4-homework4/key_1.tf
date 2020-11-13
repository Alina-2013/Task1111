resource "aws_key_pair" "key2020" {
  key_name   = "key2020"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}