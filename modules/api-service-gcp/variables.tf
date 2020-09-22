variable api_service_project {
	type = map(object({
		project = string
		service = string
		disable_dependent_services = bool
		disable_on_destroy = bool
	}))
}