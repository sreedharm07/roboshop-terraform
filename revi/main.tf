module "servers" {
  source = "./modules"
  components = var.components
  security_group = var.security_group
  instance_type = var.instance_type
  zone_id = var.zone_id
  for_each = var.components
}