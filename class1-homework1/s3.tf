resource "aws_s3_bucket" "bucket" {
  bucket = "alinas3-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}