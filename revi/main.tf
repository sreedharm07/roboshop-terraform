variable "instance_type" {
  default = "t3.micro"
}
variable "security_group" {
  default = "sg-03c71c5d008981a14"
}
variable "zone_id" {
  default = "Z07380001ED1GOXY0KMLD"
}
variable "components" {
  default = {
    frontend= {name="frontend"}
    mongodb= {name="mongodb"}
    catalogue={name="catalogue"}
  }
}

data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}


resource "aws_instance" "instances" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group]
  for_each = var.components
  tags = {
    Name = each.key
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    ="frontend"
  type    = "A"
  ttl     = 30
  records = aws_instance.instances.private_ip       #[lookup(lookup(aws_instance.instances,each.key,null),private_ip, null)]
}
