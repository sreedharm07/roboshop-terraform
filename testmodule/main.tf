module "servers" {
  source = "./testmg"

#  for_each = var.name
  instance_type = var.instance_type
  name = var.name
  security_id = var.security
}

variable "name" {
  default = {
    frontend = {
      name          = "frontend"

    }
    mongodb = {
      name          = "mongodb"
    }
  }
}

variable "instance_type" {
  default = "t3.micro"
}
variable "security" {
  default = "sg-03c71c5d008981a14"
}
