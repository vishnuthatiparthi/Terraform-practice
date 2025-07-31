provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.bucket_names)

  bucket = each.key
  acl    = "private"

  tags = {
    Name        = each.key
    Environment = "Demo"
  }
}
