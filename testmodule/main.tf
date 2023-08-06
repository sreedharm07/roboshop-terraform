module "testmg" {
  source = "./modules"
}

output "testmg" {
  value = module.testmg.ami
}
