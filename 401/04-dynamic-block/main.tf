resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.default.name

#   allow {
#     protocol = "icmp"
#   }

#   allow {
#     protocol = "tcp"
#     ports    = ["80", "8080", "1000-2000"]
#   }

  dynamic "allow" {
    for_each = var.allow_rules 
    content {
        protocol = allow.value.protocol
        ports = allow.value.ports
    }
  }

#   dynamic "allow" {
#     for_each = var.allow_rules 
#     iterator = rule    
#     content {
#         protocol = rule.value.protocol
#         ports = rule.value.ports
#     }
#   }

  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "test-network"
}