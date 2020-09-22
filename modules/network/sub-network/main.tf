resource "google_compute_subnetwork" "network_with_ip_range" {
  for_each = var.display_name_network
  name          = each.value.name
  ip_cidr_range = each.value.ip_cidr_range #ip interno
  region        = each.value.region
  network       = var.network
  secondary_ip_range {
    range_name    = each.value.range_name_secondary
    ip_cidr_range = each.value.ip_cidr_range_secondary #ip publicas
  }
}