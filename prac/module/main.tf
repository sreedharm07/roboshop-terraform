resource "aws_instance" "instance" {
    ami           = data.aws_ami.ami.id
    instance_type = "t3.micro"
    security_groups= ["sg-03c71c5d008981a14"]

    tags          = {
      Name = var.components
    }
  }


resource "aws_route53_record" "record" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  for_each = var.components
  name    =each.key
  type    = "A"
  ttl     = 30
  records = [ aws_instance.instance.private_ip ]
}