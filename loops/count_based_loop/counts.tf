# resource "aws_instance" "web" {
#   count = 11    # it will create the 11 instances which are on the list in variables file
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web" #But here we got all instances with same name web. so count.index is a special variable given by terraform
#   }
# }


resource "aws_instance" "web" {
  count         = length(var.instance_names)
  ami           = var.ami_id
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] =="mysql" || var.instance_names[count.index] == "shipping" ? "t2.medium" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
  count   = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
records = [aws_instance.web[count.index].private_ip]
}
