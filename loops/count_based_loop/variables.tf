variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "component_names" {
  type    = list(string)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "dispatch", "web"]
}

variable "zone_id" {
  type    = string
  default = "Z0093851TNVOWHOSVNGE"
}

variable "domain_name" {
  type    = string
  default = "gokul.shop"
}