locals {
  val = max(12, 3, 25)
}


resource "google_compute_instanceasf" "default" {
  count = var.number_of_instances
  name  = "test"
  #  machine_type = var.instance_type[var.environment]
  machine_type = lookup(var.instance_type, var.environment)
  zone         = element(var.zones, count.index)

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