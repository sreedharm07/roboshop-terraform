variable "students" {
  default = "sridhar"
}

output "name_of_student" {
  value = var.students
}