variable "container_name" {
  type    = string
  default = "AltaResearchWebService"

}

variable "internal_port" {
  type    = number
  default = 9876
}


variable "external_port" {
  type    = number
  default = 5432

}
