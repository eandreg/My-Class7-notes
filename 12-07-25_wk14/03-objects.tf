resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.website.bucket
  key    = "index.html"
  source = "./s3-lab-example/index.html"
  content_type = "text/html"

  etag = filemd5("./s3-lab-example/index.html")
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.website.bucket
  key    = "error.html"
  source = "./s3-lab-example/error.html"
 
  etag = filemd5("./s3-lab-example/error.html")
}

resource "aws_s3_object" "image" {
  bucket = aws_s3_bucket.website.bucket
  key    = "image.jpg"
  source = "./s3-lab-example/image.jpg"
  content_type = "image/jpeg"

  etag = filemd5("./s3-lab-example/image.jpg")
}
