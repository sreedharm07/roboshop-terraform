variable "components" {
  default = {
    frontend={
      name="frontend"
    }
    mongodb={
      name="mongodb"
    }
    catalogue={
      name="catalogue"
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