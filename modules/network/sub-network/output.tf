#output "creation_timestamp" {
#	#for_each = google_compute_subnetwork.network_with_ip_range
#	value = google_compute_subnetwork.network_with_ip_range[each.key] ## referencia del recurso
#	description = "vpc network created"
#}

#output "gateway_address" {
#	#for_each = google_compute_subnetwork.network_with_ip_range
#	value = each.value ## referencia del recurso
#	description = "vpc network created"
#}