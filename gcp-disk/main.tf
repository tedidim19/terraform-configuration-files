provider "google" {}

resource "google_compute_disk" "krisi-tf" {
  provider = "google"
  name = "tf-gcp-disk"
  type = "pd-ssd"
  zone = "europe-west1-b"
}
