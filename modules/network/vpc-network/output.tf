## DEFINE EL RETORNO DE SALIDA DEL MODULO AL SER CREADO
output "id" {
	value = google_compute_network.vpc_network.id ## referencia del recurso
	description = "vpc network created"
}

output "self_link" {
	value = google_compute_network.vpc_network.self_link
	description = "enlace de referencia de recurso"
}

output "gateway_ipv4" {
	value = google_compute_network.vpc_network.gateway_ipv4
	description = "ipv4 de recurso"
}