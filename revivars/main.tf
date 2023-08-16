module "servers" {

  source          = "git::https://github.com/sreedharm07/roboshop-terraform.git/revi/modules"

  components      = each.value["name"]
  security_group  = var.security_group
  instance_type   = var.instance_type
  zone_id         = var.zone_id
  for_each        = var.components
}