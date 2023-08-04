# plan variable-----------------------
variable "students" {
  default = "sridhar"
}

output "name_of_student" {
  value = var.students
}

# list variables ---------------------
variable "students__m" {
  default = [
  "sridhar" ,
  "vish" ]
}
output "name_of__student" {
  value = var.students[1]
}

# mapping variable ------------------
variable "students_m" {
  default = {
    sridhar = "student"
    vish    = "employee"
  }
}

output "type_of_job" {
  value = var.students_m["sridha"]
}