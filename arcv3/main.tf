module "vpc" {
  source = "git::https://github.com/sreedharm07/terraform-vpc.git"

  for_each = var.vpc
  cidr = each.value["cidr"]
}