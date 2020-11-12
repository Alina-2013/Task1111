resource "aws_key_pair" "Bastion2" {
	key_name = "my-key2"
	public_key = "${file("~/.ssh/id_rsa.pub")}"
}
