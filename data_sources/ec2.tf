resource "aws_instance" "db" {

    ami = data.aws_ami.centos8.id
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type
    tags = local.tags
}