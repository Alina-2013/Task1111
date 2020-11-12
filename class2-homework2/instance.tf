resource "aws_instance" "web" {
  ami           =  "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  key_name = "${aws_key_pair.Bastion2.key_name}"
  user_data = "${file("userdata1_file.sh")}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  availability_zone = "us-east-1a"

  tags = {
    Name = "Ubuntu"
    Environment = "Dev"
  }
}