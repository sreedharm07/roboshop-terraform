module "test" {
  source = "./modules"
  instance_type = var.instance_type
}

output "test" {
  value = module.test
}


variable "instance_type" {
  default = "t3.small"
}


#variable "components" {
#  default = {
#    frontend = {name = "frontend"}
#    mongodb = {name = "mongodb"}
#    catalogue={name = "catalogue"}
#  }
#}
