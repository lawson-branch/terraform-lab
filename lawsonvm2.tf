resource "google_compute_instance" "lawson-vm2" {
  name         = "lawson-vm2"
  machine_type = "n1-standard-1"          
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    subnetwork = "lawson-subnet2"

    access_config {  
    }
  }
}