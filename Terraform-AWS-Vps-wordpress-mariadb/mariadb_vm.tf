resource "aws_instance" "DB_Server" {
  ami                         = "${data.aws_ami.centos.id}"
  instance_type               = "${var.instance_type_db}"
  key_name                    = "${aws_key_pair.Bastion.key_name}"
  vpc_security_group_ids      = ["${aws_security_group.db_SG.id}"]
  subnet_id                   = "${aws_subnet.pub_sub_101.id}"
  associate_public_ip_address = true

  tags = {
    Name = "DB-Server"
  }
}

