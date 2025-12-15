locals { # for information you have to repeat that should never change
  origin_id = "S3-${aws_s3_bucket.website.bucket}"
}

resource "aws_cloudfront_origin_access_control" "website" {
  name                              = "local.origin_id"
  description                       = "Example Policy"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
