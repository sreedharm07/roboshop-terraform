module "servers" {
  source = "./testmg"

  for_each = var.name

  instance_type = each.value["instance_type"]
  name =  each.value["name"]
  security_id = var.security
}

variable "name" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t1.micro"
    }
    mongodb = {
      name          = "mongodb"
      instance_type = "t1.micro"
    }
  }
}

variable "security" {
  default = "sg-03c71c5d008981a14"
}
