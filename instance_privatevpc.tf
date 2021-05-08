provider "google" {
  project     = "mhr-project"
  credentials = file("terraform_serviceaccount.json")
  region      = "europe-west1"
  zone         = "europe-west1-b"
}
resource "google_compute_instance" "vm_instance" {
  name         = "mhr-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet-mhr.id
    access_config {
    }
  }
}
resource "google_compute_network" "vpc-mhr" {


  name                    = "vpc-mhr-dev"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet-mhr" {


  name          = "subnet-mhr-dev"
  ip_cidr_range = "10.1.9.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-mhr.id
}
