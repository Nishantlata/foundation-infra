variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string

}

variable "rg_name" {
  type        = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "nsg_rule_name" {
  description = "The name of the Network Security Group rule"
  type        = string
}

variable "nsg_priority" {
  description = "The priority of the Network Security Group rule"
  type        = number
}

variable "nsg_direction" {
  description = "The direction of the Network Security Group rule"
  type        = string
}


variable "nsg_access" {
  description = "The access of the Network Security Group rule"
  type        = string
}

variable "nsg_protocol" {
  description = "The protocol of the Network Security Group rule"
  type        = string
}

variable "nsg_source_port_range" {
  description = "The source port range of the Network Security Group rule"
  type        = string
}

variable "nsg_destination_port_range" {
  description = "The destination port range of the Network Security Group rule"
  type        = string
}

variable "source_address_prefix" {
  description = "The source address prefix of the Network Security Group rule"
  type        = string
}

variable "destination_address_prefix" {
  description = "The destination address prefix of the Network Security Group rule"
  type        = string
}

variable "comman_tags" {
  description = "The tags for the Network Security Group"
  type        = map(string)
}