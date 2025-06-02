resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type == "MongoDB" ? "t2.micro" : "t2.medium"

  tags = {
    Name = "Terraform"
  }
}
