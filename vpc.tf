resource "google_compute_network" "vpc-network" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "lawson-subnet" {
  name          = "lawson-subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-west1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "lawson-subnet2" {
  name          = "lawson-subnet2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_firewall" "http_https" {
  name    = "allow-http-https"
  network = "my-vpc"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  direction = "INGRESS"
  priority  = 1000

  # Add both source ranges here
  source_ranges = ["10.0.1.0/24", "10.0.2.0/24"]
  target_tags   = ["http-https"]
}



