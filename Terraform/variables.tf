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

variable "pip_name" {

  description = "The name of the Public IP address."

  type = map(object({

    pip_name = string

    rg_name = string

    pip_location = string

    pip_allocation_method = string

  }))
}
variable "nsg_name" {

  description = "The name of the Network Security Group"

  type = map(object({

    nsg_name = string

    rg_name = string

    nsg_location = string

    nsg_tags = map(string)

    nsg_rule_name = string

    nsg_priority = number

    nsg_direction = string

    nsg_access = string

    nsg_protocol = string

    nsg_source_port_range = string

    nsg_destination_port_range = string

    source_address_prefix = string

    destination_address_prefix = string


  }))
}

variable "nsg_association" {

  description = "The association of the NSG with the subnet"

  type = map(object({

    subnet_id = string

    nsg_id = string

  }))
}

variable "app_service_plans" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    os_type             = string
    sku_name            = string
  }))
}