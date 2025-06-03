variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
   type = list
   default = ["MongoDB","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}
