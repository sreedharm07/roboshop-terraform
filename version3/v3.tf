#module "test" {
#  source = "./modules"
#}


data "aws_ami" "example" {
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = [973714476881]
}

#output "testing" {
#  value =  data.aws_ami.example
#}