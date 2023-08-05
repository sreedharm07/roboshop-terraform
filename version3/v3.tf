module "test" {
  source = "./modules"
#  instance_type = var.instance_type
}

output "test" {
  value = "data.aws_ami.example"
}


variable "instance_type" {
  default = "t3-micro"
}


#variable "components" {
#  default = {
#    frontend = {name = "frontend"}
#    mongodb = {name = "mongodb"}
#    catalogue={name = "catalogue"}
#  }
#}
