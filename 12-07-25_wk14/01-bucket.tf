resource "aws_s3_bucket" "website" {
  bucket_prefix = "saturday-bucket"
  force_destroy = true

  tags = {
    Name        = "dennis bucket"
  }
}