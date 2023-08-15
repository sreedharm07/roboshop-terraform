data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}


resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "adding_record" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "frontend"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}



resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "adding_record" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "mongodb"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}


resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "adding_record" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = "catalogue"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}