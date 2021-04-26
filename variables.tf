variable "aws_tags" {
  type = map(any)
  default = {
    owner              = "Luke McCleary"
    se-region          = "AMER-East E2"
    purpose            = "training demo for manager and peers"
    ttl                = "48"
    terraform          = "true"
    hc-internet-facing = "true"
  }
}

variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  default = "luketest"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-east-1"
}

