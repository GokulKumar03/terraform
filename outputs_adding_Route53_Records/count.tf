# resource "aws_instance" "web" {
#   count = 11 # now terraform will create 11 instances
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = var.instance_type[count.index]
#   }
# }

resource "aws_instance" "web" {
  count = 11 # now terraform will create 11 instances
  ami           = var.ami_id
  instance_type = var.instance_type[count.index] == "MongoDB" || var.instance_type[count.index] == "mongodb" || var.instance_type[count.index] == "mongodb" ? "t2.medium" : "t2.micro"

  tags = {
    Name = var.instance_type[count.index]
  }
}


# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = var.instance_type[count.index].gokul.shop
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.web[count.index].private_ip]
# }

# Here var.instance_type[count.index] is "variable, but gokul.shop is not variable. Hre we are mixing variable and static text. So here we give double quotes and must give doller for deciding variable. This concept is known as interpoletion.

# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = "${var.instance_type[count.index]}.gokul.shop"
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.web[count.index].private_ip]
# }

# Lets keep domain name also in variable.

# resource "aws_route53_record" "www" {
#   count = 11
#   zone_id = var.zone_id
#   name    = "${var.instance_type[count.index]}.${var.domain_name}" # interpolation
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.web[count.index].private_ip]
# }

# Now, we have to write one condition that if instance is web, then it must have public ip. Other than web must have private ip.

resource "aws_route53_record" "www" {
  count = 11
  zone_id = var.zone_id
  name    = "${var.instance_type[count.index]}.${var.domain_name}" # interpolation
  type    = "A"
  ttl     = 1
  records = [var.instance_type[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}
