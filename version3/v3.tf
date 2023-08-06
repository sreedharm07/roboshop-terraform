module "servers" {
  for_each      = var.components


  source            = "./modules"
  security_id       = var.id
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
}

