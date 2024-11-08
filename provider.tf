provider "google" {
  project = "<Project_id>"
  region  = "us-east1"
}

resource "google_compute_network" "default" {
  name = "terraform-network"
}
