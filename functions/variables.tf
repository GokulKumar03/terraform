variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
   default = ["MongoDB","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "zone_id" {
  default = "Z0093851TNVOWHOSVNGE"
}

variable "domain_name" {
  default = "gokul.shop"
}

