resource "random_string" "random1" {
  length           = 16
  special          = true
  override_special = "/@£$"

  provisioner "local-exec" {
    command = "echo ${google_compute_instance.default.id} > ip.txt"
  }

  # provisioner "file" {
  #   source = "/Users/manishjindal/repos/dir1/blah.txt"
  #   destination = "/Users/manishjindal/repos/dir2/blah.txt"

  #   connection {
  #     type     = "ssh"
  #     user     = "root"
  #     password = "${var.root_password}"
  #     host     = "${var.host}"
  #   }
  # }
}


resource "google_compute_instance" "default" {
  name         = "test"
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

  provisioner "local-exec" {
    command = "echo ${google_compute_instance.default.id} > ip.txt"
    #on_failure = continue
    #on_failure = fail
  }
}