module "servers" {
  source = "./testmg"

  for_each = var.name
  record = var.record
  instance_type = each.value["instance_type"]
  name =  each.value["name"]
  security_id = var.security
}


