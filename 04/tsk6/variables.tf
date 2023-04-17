#------------------------------
##### variables for cloud #####
#------------------------------ 

variable "sa_key_file" {
  type        = string
  default     = ""
  description = "Service account key file cloud"
}

variable "cloud_id" {
  type        = string
  description = "cloud id"
}

variable "folder_id" {
  type        = string
  description = "cloud folder id"
}

#--------------------------------
##### variables for vault #####
#-------------------------------- 

variable "vault_addr" {
  description = "Vault addres"
  type        = string
}

variable "vault_admin_token" {
  description = "Vault admin token"
  type        = string
}

variable "vault_skip_tls_verify" {
  description = "Set this to true to disable verification of the Vault server's TLS certificate"
  type        = string
  default     = false
}
