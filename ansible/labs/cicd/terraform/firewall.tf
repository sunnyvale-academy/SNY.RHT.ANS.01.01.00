resource "google_compute_firewall" "allow-http-ingress" {
  name    = "fw-http-ingress"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"] 
}