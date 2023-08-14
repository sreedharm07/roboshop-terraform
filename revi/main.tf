data "aws_ami" "ami" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}


resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}