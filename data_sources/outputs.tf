# to get ami-id

output "ami_id" {
    value = data.aws_ami.centos8.id
  }

  output "vpc_info" {
    value = data.aws_vpc.default.id
  }