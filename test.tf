variable "components" {
  default = {
    frontendd = {name= "frontend-dev"}
    mongodb = {name="mongodb-dev"}
    catalogue = {name="catalogue-dev"}
    redis = {name="redis-dev"}
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t3.micro"

  tags = {
    Name = lookup(each.value,"name",null)
  }
}
