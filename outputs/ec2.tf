# resource "aws_instance" "web" {
#   count = 11    # it will create the 11 instances which are on the list in variables file
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web" #But here we got all instances with same name web. so count.index is a special variable given by terraform
#   }
# }


resource "aws_instance" "web" {
   
  ami           = var.ami_id
  instance_type = "t2.micro"
  tags = var.tags
}