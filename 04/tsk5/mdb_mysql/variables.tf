variable "name" {
  type    = string
}

variable "network_id" {
  type    = string
}

variable "one_host" {
  type = map(string)
  default = {
    "ru-central1-a" = "10.0.1.0/24"
  }
}

variable "three_hosts" {
  type = map(string)
  default = {
    "ru-central1-a" = "10.0.1.0/24",
    "ru-central1-b" = "10.0.2.0/24",
#    "ru-central1-c" = "10.0.3.0/24" 
  }
}

variable "HA" {
  type    = bool
  default = false
}

