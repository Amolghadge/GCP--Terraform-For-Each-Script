provider "google" {
  project = "pacific-element-415516"
  region  = "us-east1"
}

resource "google_compute_network" "default" {
  name = "terraform-network"
}
