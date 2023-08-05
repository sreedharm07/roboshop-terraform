#module "test" {
#  source = "./modules"
#}


data "aws_ami" "example" {
  name_regex       = "Centos-8-DevOps-Practice"
}

output "testing" {
  value = "aws_ami"
}