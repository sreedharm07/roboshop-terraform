data "aws_ami" "ami" {
  name_regex = "Centos-8-DevOps-Practice"
  owners     = ["973714476881"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [var.security_id ]

  for_each = var.name
  tags = {
    Name = each.value["name"]
  }
}



variable "instance_type" {}
variable "name" {}
variable "security_id" {}
