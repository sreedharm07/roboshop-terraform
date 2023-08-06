module "servers" {
  source = "./modules"
 security_id= var.id
  name= each.value["name"]
  for_each = var.components
  instance_type = each.value["instance_type"]
}

