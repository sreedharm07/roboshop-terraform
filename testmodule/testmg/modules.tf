resource "aws_instance" "web" {
  ami                       = data.aws_ami.ami.id
  instance_type             = var.instance_type
  vpc_security_group_ids    = [var.security_id ]

  tags = {
    Name  = var.name
  }

  provisioner "local-exec" {
    command = "sleep 30"
  }
}



resource "aws_route53_record" "dns" {
  zone_id      = var.record
  name         = "${var.name}-dev.cloudev7.online"
  type         = "A"
  ttl          = 30
  records      = [aws_instance.web.private_ip ]
}

variable "record" {
  default = "Z07380001ED1GOXY0KMLD"
}