resource "aws_route53_record" "web" {
  zone_id = "Z053120915MK3EF9P6C2Z"
  name    = "www.alinacyber.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.web.public_ip}"]
}