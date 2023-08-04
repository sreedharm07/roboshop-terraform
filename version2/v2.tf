variable  "components" {
  default = {
    frontend  = {}
    mongodb   = {}
    catalogue = {}
    #  redis     = {}
    #  user      = {}
    #  cart      = {}
    #  mysql     = {}
    #  shipping  = {}
    #  rabbitmq  = {}
    #  payment   = {}
    #  dispatch  = {}
  }
}
resource "aws_instance" "instances" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03c71c5d008981a14" ]

  for_each= var.components
tags = {
    Name = lookup(each.value,key, null)
  }
}

#
#resource "aws_route53_record" "www" {
#  zone_id = aws_route53_zone.primary.zone_id
#  name    = "www.example.com"
#  type    = "A"
#  ttl     = 300
#  records = [aws_eip.lb.public_ip]
#}


