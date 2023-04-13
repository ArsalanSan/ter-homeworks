variable "name" {
  type    = string
  description = "Cluster name"
}

variable "network_id" {
  type    = string
  description = "Network ID"
}

variable "one_host" {
  type = map(string)
  default = {
    "ru-central1-a" = "10.0.1.0/24"
  }
  description = "Network default value for singl host"
}

variable "three_hosts" {
  type = map(string)
  default = {
    "ru-central1-a" = "10.0.1.0/24",
    "ru-central1-b" = "10.0.2.0/24",
#    "ru-central1-c" = "10.0.3.0/24" 
  }
  description = "Network default value for more hosts" 
}

variable "HA" {
  type    = bool
  default = false
  description = "False - 1 host, true - 3 hosts"
}

