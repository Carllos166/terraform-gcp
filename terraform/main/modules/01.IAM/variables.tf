variable "roles" {
  description = "Regra de Rota"
  type        = list(string)
} 

variable "gcp_project_id" {
  default = "a"
  type = string
}

variable "zone" {
  default = "Zona da Instância"
  type = string
}

variable "instance_name" {
  default = "Nome da Instância"
  type = string
}