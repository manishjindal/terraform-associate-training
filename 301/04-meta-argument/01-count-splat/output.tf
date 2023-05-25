// Splat expression
output ids {
  value       = google_compute_instance.default[*].id
  sensitive   = false
  description = "description"
}

output ids_splat {
  value       = google_compute_instance.default.*.id
  sensitive   = false
  description = "description"
}

// for loop
output ids_for {
  value       = {
    for k, v in google_compute_instance.default: k => v.id
  }  
  sensitive = false
}

//zipmap
output ids_zipmap {
  value = zipmap(google_compute_instance.default.*.name, google_compute_instance.default.*.id)
}