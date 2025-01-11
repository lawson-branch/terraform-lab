resource "google_compute_instance" "lawson-vm1" {
  name         = "lawson-vm1"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "lawson-subnet1"

    access_config {  
    }
  }
}