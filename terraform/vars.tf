variable "CREDENTIAL_FILE" {}
variable "VM_USERNAME" {}
variable "PROJECT_ID" {}
variable "REGION" {
    default="us-west1-a"
}
variable "IMAGE" {
    type="map"
    default={
        "us-west1-a"="debian-cloud/debian-9"
        "us-west1-b"="debian-cloud/debian-9"
        "us-west2-a"="debian-cloud/debian-8"
    }
}