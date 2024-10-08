#terraform.tfvars

gcp_project_id = "third-circle-436817-u7"
gcp_region     = "us-central1"
instance_name  = "vm-instance"
machine_type   = "e2-small"
zone           = "us-central1-a"
image          = "debian-cloud/debian-11"
network        = "vpc-terraform"


roles = [
  "roles/compute.osLogin",
  "roles/compute.viewer",
  "roles/compute.admin"
]