
variable "instance_type" {
  default = "t3.micro"
}

variable "id" {
  default =  "sg-03c71c5d008981a14"
}

variable "components" {
  default = {
    frontend={name="frontend"}
    mongodb={name="mongodb"}
    catalogue={name="catalogue"}
  }
}