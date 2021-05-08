resource "google_compute_network" "vpc-mhr" {


  name                    = "vpc-mhr-dev"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet-mhr" {


  name          = "subnet-mhr-dev"
  ip_cidr_range = "10.1.9.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-mhr.id
}
