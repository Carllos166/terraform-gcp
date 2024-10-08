output "roles" {
  value = [for member in google_compute_instance_iam_member.member : member.role]
}