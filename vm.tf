resource "google_compute_instance" "test-vm" {
  name         = "my-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet"

    access_config {  
    }
  }
}

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
