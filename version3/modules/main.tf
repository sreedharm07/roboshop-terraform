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

#resource "aws_route53_record" "dns" {
#  zone_id = Z07380001ED1GOXY0KMLD
#  name    = "${each.key}-dev.cloudev7.online"
#  type    = "A"
#  ttl     = 30
#  records = []
#}


variable "instance_type" {}
variable "security_id" {}
variable "name" {}