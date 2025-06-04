locals {

  #ami_id = "ami-0b4f379183e5706b9"
  sg_id = "sg-05aa872f740a800d4"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "data-source"
  }
}