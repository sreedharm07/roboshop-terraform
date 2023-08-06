module "servers" {
  source = "./modules"
instance_type = var.instance_type
 security_id= var.id
  name= each.value["name"]
  for_each = var.components
}

