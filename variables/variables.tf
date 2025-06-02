variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sg_name" {
  type    = string
  default = "roboshop-aws"
}

variable "sg_description" {
  type    = string
  default = "Allowing all inbound and outbound traffic"
}

variable "cidr_block" {
  default = "0.0.0.0/0"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

