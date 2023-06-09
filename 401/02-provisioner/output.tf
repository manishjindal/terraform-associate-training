output "id" {
  value       = google_compute_instance.default.id
  sensitive   = false
  description = "description"
}

output "password" {
  value       = random_string.random1.id
  sensitive   = false
  description = "description"
}
