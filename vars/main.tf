variable "students" {
  default = 100
}

output "name_of_student" {
  value = var.students
}