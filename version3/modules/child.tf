data "aws_ami" "example" {
  name_regex       = "devops-practice"
  }



#resource "aws_instance" "instance" {
#  ami           =
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "--------"
#  }
#}