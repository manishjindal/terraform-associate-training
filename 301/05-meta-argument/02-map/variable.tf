variable "region" {
  type = string
}
variable "zones" {
  type = list(any)
}
variable "number_of_instances" {
  type = number
}
variable "instance_type" {
  type = map(any)
}
variable "environment" {
  type = string
}
