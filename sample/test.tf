#variable "plan"{
#  default = "sridhar"
#}
#
#variable "list" {
#  default = [100, 200]
#}

variable "maps" {
  default = {
    sridhar = "man" ,  vish = "women"
  }
}

output "output" {
  value = var.maps
}