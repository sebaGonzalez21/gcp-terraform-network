variable display_name_network {
	type = map(object({
		name = string,
		ip_cidr_range = string,
		region = string,
		range_name_secondary = string,
		ip_cidr_range_secondary = string,
	}))
}

variable network {
	type = string
}