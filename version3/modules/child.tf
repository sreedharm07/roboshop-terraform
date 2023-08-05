data "aws_ami" "example" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}

output "test" {
  value = "data.aws_ami.example"
}

#resource "aws_instance" "instance" {
#  ami           = data.aws_ami.example
#  instance_type = var.instance_type
#
#  tags = {
#    Name = "frontend"
#  }
#}
#
#output "front" {
#  value = aws_instance.instance
#}
#
##resource "aws_route53_record" "dns" {
##  zone_id = Z07380001ED1GOXY0KMLD
##  name    = "frontend-dev.cloudev7.online"
##  type    = "A"
##  ttl     = 30
##  records = []
##}
#
#variable "instance_type" {}
#variable "components" {}