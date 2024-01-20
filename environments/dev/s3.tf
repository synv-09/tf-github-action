resource "aws_s3_bucket" "demo" {
  bucket = "synv-demo"
}

# resource "aws_s3_bucket_acl" "demo" {
#   bucket = aws_s3_bucket.demo.id
#   acl = "private"
# }
