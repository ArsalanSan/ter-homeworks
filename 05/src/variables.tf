variable "source_address" {
  type = string
  
  default = "192.168.0.0/24"

  validation {
    condition     = can(cidrnetmask(var.source_address))
    error_message = "Error IPv4 CIDR address."
  }
}

variable "list_addresses" {
  type = list(string)

  default = ["192.168.1.0/24","192.168.2.0/24"]

  validation {
    condition = alltrue([
      for a in var.list_addresses : can(cidrnetmask(a))
    ])
    error_message = "Error in list IPv4 CIDR addresses."
  }
}

variable "lower_word" {
  type = string
  
  default = "word"

  validation {
    condition = length(regexall("[[:upper:]]+",var.lower_word)) == 0 ? true : false
    error_message = "The value has an uppercase character"
  }
}

variable "makcloud" {
    description="Who is better Connor or Duncan?"
    type = object({
        dunkan = optional(bool)
        connor = optional(bool)
    })

    default = {
        dunkan = false
        connor = true
    }

    validation {
        error_message = "There can be only one MakCloud"
        condition = (var.makcloud.dunkan == true && var.makcloud.connor == false) || (var.makcloud.connor == true && var.makcloud.dunkan == false) 
    }
}

