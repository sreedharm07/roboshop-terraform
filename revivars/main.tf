module "servers" {
  source = "git::https://github.com/sreedharm07/terraform-module.git"
  components = each.value["name"]
  security_group = var.security_group
  instance_type = var.instance_type
  zone_id = var.zone_id
  for_each = var.components
}