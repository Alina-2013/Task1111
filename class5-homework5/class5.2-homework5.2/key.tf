resource "aws_key_pair" "class-1" {
  key_name   = "jenkins1"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}