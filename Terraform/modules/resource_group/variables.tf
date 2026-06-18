variable "rg_name" {
  type        = string
  description = "The name of the resource group"
}

variable "rg_location" {
  type        = string
  description = "The location of the resource group"
}

variable "rg_tags" {
  type        = map(string)
  description = "The tags for the resource group"
}
