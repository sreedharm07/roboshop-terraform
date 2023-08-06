module "servers" {
  source = "./testmg"
}

output "testmg" {
  value = module.servers.test
}
