variable  "components" {
  default = {
    frontend  = {name = "frontend-dev"}
    mongodb   = {name = "mongodb-dev"}
    catalogue = {name = "catalogue-dev"}
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
    Name = lookup(each.value, "name", null)
  }
}


resource "aws_route53_record" "records" {
  for_each =  var.components
  zone_id =  "Z07380001ED1GOXY0KMLD"
  name    = "${lookup(each.value,"name", null)}.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instances,each.key,null),"private key",null)]
}


