// Configure the Google Cloud provider
provider "google" {
 project     = "${var.PROJECT_ID}"
 region      = "${var.REGION}"
}