terraform {
  backend "gcs" {
    bucket  = "tf-state-demo-ansible1" // bucket has to be created manually using GCP dashboard before running this demo, variables can not be used here
    prefix  = "terraform/state" // variables can not be used here
    credentials = "/home/vagrant/credentials.json" // variables can not be used here
  }
}