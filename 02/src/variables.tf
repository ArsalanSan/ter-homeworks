###cloud vars

variable "sa_key_file" {
  type        = string
  default     = "key.json"
  description = "Service account key file"
}

/* variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}*/

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "image_name" {
  type    = string
  default = "ubuntu-2004-lts"
  description = "Image relase name"
}

### **** prefix name vms ****

variable "prefix_name" {
  type = map(string)
  default = {
    env     = "developer",
    project = "platform"
  }
}

### **** vm_web ****

variable "vm_web_name" {
  type    = string
  default = "web"
  description = "Instance name"
}

variable "vm_web_platform" {
  type    = string
  default = "standard-v1"
  description = "Platform name"
}

variable "vm_web_resources" { 
  type = map(number)
  default = {
    cores         = 2,
    memory        = 1,
    core_fraction = 5
  }
  description = "Costumize VM(core, RAM, core fraction)"
}


### **** vm_db ****

variable "vm_db_name" {
  type    = string
  default = "db"
  description = "Instance name"
}

variable "vm_db_platform" {
  type    = string
  default = "standard-v1"
  description = "Platform name"
}

variable "vm_db_resources" { 
  type = map(number)
  default = {
    cores         = 2,
    memory        = 2,
    core_fraction = 20
  }
  description = "Costumize VM (core, RAM, core fraction)"
}

### **** ssh ****

variable "vms_ssh_resources" { 
  type = map
  default = {
    serial-port-enable = 1,
    ssh-key = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPBanJGCHc6lVJ9E1mDUuSblhDMoIPfPsiG2y9QdKWjS"
  }
  description = "vms ssh configuration"
}
