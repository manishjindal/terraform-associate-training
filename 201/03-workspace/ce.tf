locals {
  tags = ["foo", "bar"]
}


resource "google_compute_instance" "default" {
  name         = "${terraform.workspace}-test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = local.tags

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