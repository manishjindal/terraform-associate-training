resource "google_compute_instance" "default" {
  for_each = var.instances
  name         = each.key
  machine_type = each.value.machine_type
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }
}