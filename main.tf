provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "${var.prefix}_${random_id.server.hex}"
  acl    = "private"
  tags = var.aws_tags
}

resource "random_id" "bucket_id" {
  byte_length = 8
}
