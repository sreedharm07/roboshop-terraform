## plan variable----------------------------------------
#variable "students" {
#  default = "sridhar"
#}
#
#output "name_of_student" {
#  value = var.students
#}
#
## list variables ---------------------------------------
#variable "students__m" {
#  default = [
#  "sridhar" ,
#  "vish" ]
#}
#output "name_of__student" {
#  value = var.students__m[1]
#}
#
## mapping variable --------------------------------------
#variable "students_m" {
#  default = {
#    sridhar = "student"
#    vish    = "employee"
#  }
#}
#
#output "type_of_job" {
#  value = var.students_m["sridhar"]
#}

#maps of mpas ------------------------------------------

variable "mapsofmass" {
  default = {
    sridhar = {
      collage= "vaagdevi"
      school = gopikrishna
  }
    madhu = {
      collage= "zph"
      school= "zpphs"
    }
  }
}

output "details" {
  value = var.mapsofmass["sridhar"].school
}

output "otherstring" {
  value = " name = ${ var.mapsofmass["sridhar"].school } "
}