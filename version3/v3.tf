module "servers" {
  source = "./modules"

}

output "test" {
  value = module.servers
}