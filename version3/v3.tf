module "servers" {
  source = "./modules"
 security_id= var.id
  name= each.value["name"]
  for_each = var.components
}

