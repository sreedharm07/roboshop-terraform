module "resourse" {
  source = "./module"
  for_each = var.components
  components = each.key["name"]
}
























#data "aws_ami" "ami" {
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#  owners      = ["973714476881"]
#
#
#
#  resource "aws_instance" "instance" {
#    ami           = data.aws_ami.ami
#    instance_type = "t3.micro"
#    security_group= "sg-03c71c5d008981a14"
#
#    for_each      = var.components
#
#    tags          = {
#      Name =
#    }
#  }
