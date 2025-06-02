resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform"
  }
}

#Adding security Group

resource "aws_security_group" "roboshop_all" {  # This is terraform name, for terraform reference only
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_roboshop"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.roboshop_all.id
  cidr_ipv4         = var.cidr_block
  from_port         = var.ssh_port
  ip_protocol       = var.protocol
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.roboshop_all.id
  cidr_ipv4         = var.cidr_block
  ip_protocol       = "-1" # semantically equivalent to all ports
}