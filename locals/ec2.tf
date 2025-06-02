# resource "aws_instance" "web" {
#   count = 11    # it will create the 11 instances which are on the list in variables file
#   ami           = var.ami_id
#   instance_type = "t2.micro"

#   tags = {
#     Name = "web" #But here we got all instances with same name web. so count.index is a special variable given by terraform
#   }
# }


# resource "aws_instance" "web" {
#   count         = length(var.component_names)
#   ami           = var.ami_id
#   instance_type = local.instance_type

#   tags = {
#     Name = var.component_names[count.index]
#   }
# }

# resource "aws_route53_record" "www" {
#   count   = length(var.component_names)
#   zone_id = var.zone_id
#   name    = "${var.component_names[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
# records = [local.ip]
# }


resource "aws_instance" "db" {

    ami = local.ami_id
    instance_type = local.instance_type
    tags = local.tags
}