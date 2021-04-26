provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bawdw435asefg2675y4586luke" {
  bucket = "${var.prefix}-${random_id.bucket_id.hex}"
  acl    = "private"
  #tags = var.aws_tags
}

resource "random_id" "bucket_id" {
  byte_length = 8
}
