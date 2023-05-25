variable "project_id" {
  type = string
  #default     = <project_id>
  description = "description"
}

variable "no_of_instances" {
  type        = number
  default     = 2
  description = "number of instances"
}

variable "tags" {
  type    = list(any)
  default = ["foo", "bar"]
}