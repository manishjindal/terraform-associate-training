locals {
  tags = ["foo", "bar"]
  name_prefix = "${var.environment != "" ? "tf-${var.environment}" : "tf"}"
}

resource "google_compute_instance" "myce" {
  name         = "${local.name_prefix}-test-11"
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
