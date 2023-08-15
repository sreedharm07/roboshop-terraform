variable "components" {
 default = {
   name = "frontend"
   name= "mongodb"
 }
}

data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]
  for_each = var.components

  tags = {
    Name = each.value
  }
}