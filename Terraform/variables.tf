variable "rg_name" {

  description = "The name of the resource group"

  type = set(string)
}

variable "vnet_name" {

  description = "Virtual network details"

  type = map(object({

    vnet_name = string

    address_space = list(string)

    vnet_location = string

    rg_name = string

    vnet_tags = map(string)

  }))
}

variable "subnet_name" {

  description = "The name of the subnet"

  type = map(object({

    subnet_name = string

    rg_name = string

    vnet_name = string

    address_prefixes = list(string)

  }))
}
