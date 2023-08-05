#module "test" {
#  source = "./modules"
#}


data "aws_ami" "example" {
  name_regex       = "devops-practice"
}

output "testing" {
  value = aws_ami
}