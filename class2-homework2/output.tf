output "AZ" {
    value = "${aws_instance.web.availability_zone}"
}

output "PIP" {
    value = "${aws_instance.web.public_ip}"
}

output "DNS" {
    value = "${aws_route53_record.web.name}"
}

output "My-key2-name" {
    value = "${aws_instance.web.key_name}"
}
    