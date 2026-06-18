variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network"
  type        = list(string)
}

variable "vnet_location" {
  description = "Location of the virtual network"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group where the virtual network will be created"
  type        = string
}

variable "comman_tags" {
  description = "Tags to be applied to the virtual network"
  type        = map(string)
  default     = {}
}