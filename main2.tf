provider "google" {
  project     = "mhr-project"
  credentials = file("terraform_serviceaccount.json")
  region      = var.region

}
resource "google_compute_instance" "mhr-qa" {
  name         = var.instancename
  machine_type = var.machinetype
  zone         = var.zone

 

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

 

  network_interface {
    subnetwork = google_compute_subnetwork.subenet-mhr-hr.id

    access_config {
      // Ephemeral IP
    }
  }

}
resource "google_compute_subnetwork" "subenet-mhr-hr" {
  name          = var.subnetname
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.vpc-mhr-hr.id
}

resource "google_compute_network" "vpc-mhr-hr" {
  name                    = var.vpcname
  auto_create_subnetworks = false
}
