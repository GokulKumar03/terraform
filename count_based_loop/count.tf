# resource "aws_instance" "web" {
#   count = 11 # now terraform will create 11 instances
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web"
#   }
# }


# But, we get same name "web"for all the 11 instances which is not correct. So we have special vaiable, count.index given by terraform

resource "aws_instance" "web" {
  count = 11 # now terraform will create 11 instances
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_type[count.index]
  }
}