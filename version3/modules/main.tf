data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
  }

resource "aws_instance" "instances" {
  for_each = var.name
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_id]

  tags = {
    Name = each.key
  }
}


#output "ami" {
#  value = data.aws_ami.ami
#}

variable "instance_type" {}
variable "security_id" {}
variable "name" {}