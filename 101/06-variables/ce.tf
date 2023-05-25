resource "google_compute_instance" "default" {
  name         = "test21"
  machine_type = "e2-medium"
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

/*
resource "google_compute_instance" "myce" {
  count = var.no_of_instances
  name         = "test-${count.index}"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = var.tags

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
*/