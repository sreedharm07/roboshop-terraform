resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_id ]

  tags = {
    Name = var.name
  }
}

