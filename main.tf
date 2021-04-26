provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "${var.prefix}_${random_id.bucket_id.hex}"
  acl    = "private"
  tags = var.aws_tags
}

resource "random_id" "bucket_id" {
  byte_length = 8
}
