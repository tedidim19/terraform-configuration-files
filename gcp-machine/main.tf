provider "google" {}

resource "google_compute_instance" "teddy-tf" {
  machine_type = "e2-medium"
  name = "tf-machine-test"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
  provider = "google"
  zone = "europe-west1-b"
}
