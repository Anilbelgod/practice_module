output "instance_id" {
  value = google_workbench_instance.instance.id
  description = "instance_id"
}

output "proxy_uri" {
  value = google_workbench_instance.instance.proxy_uri
  description = "The proxy endpoint that is used to access the Jupyter notebook."
}

output "state" {
  value = google_workbench_instance.instance.state
  description = "The state of this instance."
}
