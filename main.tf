locals {
  virtual_machines = {
    "vm1" = { vm_size = "e2-small", zone = "us-central1-a" },
    "vm2" = { vm_size = "e2-medium", zone = "us-central1-b" },
    "vm3" = { vm_size = "f1-micro", zone = "us-central1-c" }
  }
}

resource "google_compute_instance" "vm" {
  for_each     = local.virtual_machines
  name         = each.key
  machine_type = each.value.vm_size
  zone         = each.value.zone
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


 network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}




