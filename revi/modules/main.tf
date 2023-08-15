resource "aws_instance" "instances" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ var.security_group  ]

  tags = {
    Name = var.components["key"]
  }
}


resource "aws_route53_record" "records" {
  name    = "${var.components}-dev"
  type    = "A"
  ttl     = "30"
  zone_id = var.zone_id
  records = [aws_instance.instances.private_ip ]
}