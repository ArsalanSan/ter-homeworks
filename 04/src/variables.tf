#------------------------------
##### variables for cloud #####
#------------------------------ 

variable "sa_key_file" {
  type        = string
  default     = "key.json"
  description = "Service account key file cloud"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

#--------------------------------
##### variables for module #####
#-------------------------------- 

variable "name" {
  type    = string
  default = "vpc"
}

variable "subnets" {
  description = "Create zones && subnets"
  type = list(object(
    {
      zone = string
      cidr = string
    })
  )
  default = []
}

/* this is for the map
variable "subnets" {
  type = map(object({
    zone = string
    cidr = string
  }))
}
*/
