module "servers" {
  source = "./testmg"

#  for_each = var.name
  instance_type = var.name
  name =  var.name
  security_id = var.security
}

variable "name" {
  default = {
    frontend = {
      name          = "frontend-dev"
      instance_type = "t3.micro"
    }
    mongodb = {
      name          = "mongodb-dev"
      instance_type = "t3.micro"
    }
  }
}

variable "security" {
  default = "sg-03c71c5d008981a14"
}
