resource "aws_instance" "instance" {
    ami           = data.aws_ami.ami
    instance_type = "t3.micro"
    security_groups= ["sg-03c71c5d008981a14"]

    tags          = {
      Name = var.components
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