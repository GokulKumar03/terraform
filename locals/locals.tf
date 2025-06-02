# locals {
#     name = "Gokul"
#     training = "Terraform"
#     instance_type = var.component_names[count.index] == "mongodb" || var.component_names[count.index] =="mysql" || var.component_names[count.index] == "shipping" ? "t2.medium" : "t2.micro"
#     ip = var.component_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip
# }

locals {

  ami_id = "ami-0b4f379183e5706b9"
  #instance_type = "t3.micro"
  instance_type = var.component_names == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "locals"
  }
}