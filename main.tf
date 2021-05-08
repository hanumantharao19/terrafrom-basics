provider "google" {
  project     = "mhr-project"
  credentials = file("terraform_serviceaccount.json")
  region      = "europe-west1"
}


resource "google_compute_instance" "hanu" {
  name         = "hanuistance"
  machine_type = "e2-medium"
  zone         = "europe-west1-b"




  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }



  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}

