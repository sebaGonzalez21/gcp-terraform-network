## CREACION DE NOMBRE DE PROYECTO
variable project_name {
	type = string
}

## CREACION DE CREDENCIAL
variable google_credential {
	type = string
}

## CREACION DE APIS
variable api_service_project {
	type = map(object({
		project = string
		service = string
		disable_dependent_services = bool
		disable_on_destroy = bool
	}))
}

## CREACION DE SUB NETWORK
variable display_name_network {
	type = map(object({
		name = string,
		ip_cidr_range = string,
		region = string,
		range_name_secondary = string,
		ip_cidr_range_secondary = string,
	}))
}

## CREACION DE NETWORK
variable auto_create_subnetworks{
	type = bool
}

variable name_network {
	type = string
}

