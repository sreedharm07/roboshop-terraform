variable "components" {
  default = {
    frontend = {
      name = "frontend"
    }
    mongodb = {
      name = "mongodb"
    }
    catalogue = {
      name = "catalogue"
    }
    redis = {
      name = "redis"
    }
    user = {
      name = "user"
    }
    cart = {
      name = "cart"
    }
    mysql = {
      name = "mysql"
    }
    rabbitmq = {
      name = "rabbitmq"
    }
    shipping = {
      name = "shipping"
    }
    payment = {
      name = "payment"
    }
    dispatch = {
      name = "dispatch"
    }
  }
}

variable "security_group" {
  default = "sg-03c71c5d008981a14"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "zone_id" {
  default = "Z07380001ED1GOXY0KMLD"
}