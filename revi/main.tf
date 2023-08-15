data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}


resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "frontend"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}



resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "mongodb"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "catalogue"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}