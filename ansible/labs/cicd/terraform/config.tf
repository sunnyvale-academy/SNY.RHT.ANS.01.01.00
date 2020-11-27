terraform {
  backend "gcs" {
    bucket  = "tf-state-demo-ansible" // bucket has to be created manually using GCP dashboard before running this demo, variables can not be used here
    prefix  = "terraform/state" // variables can not be used here
    //credentials = "/home/vagrant/SNY-OSS-TRF-01-01-00-870577b1e676.json" // variables can not be used here
  }
}