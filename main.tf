provider "aws" {
  region = var.region
}

resource "aws_vpc" "argonet-5" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true
  tags = var.aws_tags
}

resource "aws_security_group" "argonet-5" {
  name   = "${var.prefix}-security-group"
  vpc_id = aws_vpc.argonet-5.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = []
  }

  tags = var.aws_tags

}

