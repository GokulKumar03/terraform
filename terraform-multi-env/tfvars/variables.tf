variable "instance_names" {
  type = map
#   default = {
#     mongodb = "t3.small"
#     redis = "t2.micro"
#     mysql = "t3.small"
    # rabbitmq = "t2.micro"
    # catalogue = "t2.micro"
    # cart = "t2.micro"
    # user = "t2.micro"
    # shipping = "t3.small"
    # payment = "t2.micro"
    # dispatch = "t2.micro"
    # web = "t2.micro"
#   }
}

# ami id fetching from data source

# variable "ami_id" {
#   type    = string
#   default = "ami-0b4f379183e5706b9"
# }


variable "zone_id" {
  type    = string
  default = "Z0093851TNVOWHOSVNGE"
}

variable "domain_name" {
  type    = string
  default = "gokul.shop"
}