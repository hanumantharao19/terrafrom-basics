provider "google" {
  project     = "mhr-project"
  credentials = file("terraform_serviceaccount.json")
  region      = "europe-west1"
}

this is hanumantharao medikonda
