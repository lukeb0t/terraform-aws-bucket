provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucketname
  acl    = "private"

  tags = var.aws_tags
}
