output "first_public_ip" {
  value = google_compute_instance.gcpvm["first"].network_interface.0.access_config.0.nat_ip
}

output "second_public_ip" {
  value = google_compute_instance.gcpvm["second"].network_interface.0.access_config.0.nat_ip
}
