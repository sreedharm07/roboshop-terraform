#variable "plan"{
#  default = "sridhar"
#}
#
#variable "list" {
#  default = [100, 200]
#}

#variable "maps" {
#  default = {
#    sridhar = "man"
#    vish = "women"
#  }
#}
#
#output "output" {
#  value = var.maps
#}

variable "mapsofmaps" {
  default = {
    sridhar = {n_name = "sree" , crh = "vandi"}
    nveen = {n_name = "ok" }
  }
}

output "test" {
  value = "prmm= ${var.mapsofmaps["sridhar"].crh}-here"
}