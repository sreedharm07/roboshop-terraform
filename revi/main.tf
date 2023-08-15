variable "components" {
 default = {
   user={name="user"}
   frontend={name = "frontend"}
   mongodb={name= "mongodb"}
   catalogue={name="catalogue"}
 }
}

data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]
  for_each = var.components

  tags = {
    Name = each.value["name"]
  }

}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = each.value["name"]
  type    = "A"
  ttl     = 30
  records = [ aws_instance.instance.private_ip ]
}