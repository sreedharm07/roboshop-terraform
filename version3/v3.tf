module "servers" {
  source = "./modules"
instance_type = var.instance_type
 security_id= var.id
  name=var.components
}

#output "test" {
#  value = module.servers
#}

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
