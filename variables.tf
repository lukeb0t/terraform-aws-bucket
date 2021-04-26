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

variable "owner" {
  description = "resource owner"
  default = "Luke McCleary"
}
variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  default = "luketest3254"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-east-1"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  default     = "t2.micro"
}

variable "admin_username" {
  description = "Administrator user name for mysql"
  default     = "hashicorp"
}

variable "height" {
  default     = "400"
  description = "Image height in pixels."
}

variable "width" {
  default     = "600"
  description = "Image width in pixels."
}

variable "placeholder" {
  default     = "placedog.net"
  description = "Image-as-a-service URL. Some other fun ones to try are fillmurray.com, placecage.com, placebeard.it, loremflickr.com, baconmockup.com, placeimg.com, placebear.com, placeskull.com, stevensegallery.com, placedog.net"
}