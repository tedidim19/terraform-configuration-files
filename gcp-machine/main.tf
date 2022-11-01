provider "google" {}

resource "google_compute_instance" "krisi-tf" {
  machine_type = "e2-medium"
  name = "tf-machine99"
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
