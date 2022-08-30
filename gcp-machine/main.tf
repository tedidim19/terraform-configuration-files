provider "google" {}

resource "google_compute_instance" "krisi-tf" {
  machine_type = "e2-medium",
  name = "krisi-tf-machine",
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  },
  network_interface {
    network = "default"
  }
}