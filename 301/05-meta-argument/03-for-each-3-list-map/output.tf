// Splat expression (https://developer.hashicorp.com/terraform/language/expressions#splat-expressions)
output "ids_splat" {
  value       = values(google_compute_instance.default).*.id
  sensitive   = false
  description = "description"
}

// for expression (https://developer.hashicorp.com/terraform/language/expressions#for-expressions)
output "ids_for" {
  value = {
    for k, v in google_compute_instance.default : k => v.id
  }
  sensitive = false
}
 