data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
  }

resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.sec_id]

}

#output "ami" {
#  value = data.aws_ami.ami
#}

variable "instance_type" {}
variable "sec_id" {}