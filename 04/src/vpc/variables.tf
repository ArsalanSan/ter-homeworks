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
