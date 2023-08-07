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
    catalogue = {
      name          = "catalogue"
      instance_type = "t1.micro"
    }
    redis = {
      name          = "redis"
      instance_type = "t1.micro"
    }
    user = {
      name          = "user"
      instance_type = "t1.micro"
    }
    cart = {
      name          = "cart"
      instance_type = "t1.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t1.micro"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t1.micro"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t1.micro"
    }
    payment = {
      name          = "payment"
      instance_type = "t1.micro"
    }
    dispatch = {
      name          = "dispatch"
      instance_type = "t1.micro"
    }
  }
}

variable "security" {
  default = "sg-03c71c5d008981a14"
}

variable "record" {
  default = "Z07380001ED1GOXY0KMLD"
}