resource "google_compute_instance_iam_member" "member" {
  for_each     = toset(var.roles)
  project      = var.gcp_project_id
  zone         = var.zone
  instance_name = var.instance_name
  role         = each.value
  member       = "user:carlos.ferreira@ipnet.cloud"
}