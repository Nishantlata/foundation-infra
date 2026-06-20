variable "pip_name" {
  description = "The name of the Public IP address."
  type        = string
}
variable "rg_name" {
  description = "The name of the resource group in which to create the Public IP address."
  type        = string
}
variable "pip_location" {
  description = "The location/region where the Public IP address should exist."
  type        = string
}
variable "pip_allocation_method" {
  description = "The allocation method for the Public IP address. Possible values are: Static and Dynamic."
  type        = string
}
variable "comman_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}