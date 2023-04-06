variable "vpc_name_network" {
  type        = string
  description = "infrastructure network name"
}

variable "vpc_name_subnet" {
  type        = string
  description = "infrastructure subnet name"
}

variable "vpc_subnet_cidr" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Subnet cidr"
}

variable "vpc_zone" {
  type        = string
  default     = "ru_central1-a"
  description = "infrastructure zones"
}
