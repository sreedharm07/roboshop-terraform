variable "students" {
  default = "sridhar"
}

output "name_of_student" {
  value = var.students
}

variable "students__m" {
  default = [ "sridhar" , "vish" ]
}
output "name_of__student" {
  value = var.students__m
}

