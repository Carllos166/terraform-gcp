variable "gcp_project_id" {
  description = "ID do projeto GCP"
  type        = string
}

variable "gcp_region" {
  description = "Região do GCP"
  type        = string
}

variable "instance_name" {
  description = "Nome da instância"
  type        = string
}

variable "machine_type" {
  description = "Tipo da máquina"
  type        = string
}

variable "zone" {
  description = "Zona da instância"
  type        = string
}

variable "image" {
  description = "Imagem do disco de inicialização"
  type        = string
}

variable "network" {
  description = "Rede da instância"
  type        = string
}

variable "roles" {
  description = "value"
  type = list(string)
}