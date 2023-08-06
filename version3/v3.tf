module "servers" {
  source = "./modules"
instance_type = var.instance_type
 sec_id= var.id
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

