module "servers" {
  source = "./modules"
instance_type = var.instance_type
 security_id= var.id
  name=var.components
  for_each = var.components
}


