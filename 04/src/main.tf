####----------------------------
#### Calling the vpc module ####
####----------------------------

module "vpc" {
  source  = "./vpc"
  name    = var.name
  subnets = var.subnets
}

