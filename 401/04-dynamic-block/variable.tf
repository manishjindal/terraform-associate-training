variable project_id {
  type        = string
  default     = "<project_id>"
  description = "description"
}

variable "allow_rules" {
  #type = map
  default = {
    icmp = {
      protocol = "icmp"
      ports = []
    },
    tcp = {
      protocol = "tcp"
      ports = ["80", "8080", "1000-2000"]
    }
  }
}