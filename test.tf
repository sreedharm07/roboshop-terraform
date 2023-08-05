variable "components" {
  default = {
    frontend = {name= "frontend"}
    mongodb = {name="mongodb"}
    catalogue = {name="catalogue"}
    redis = {name="redis"}
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}
