output "resource_group_names" {
  description = "Names of the resource groups created by the module"
  value       = [for rg in module.resource_group : rg["rg_name"]]
}

output "resource_group_ids" {
  description = "IDs of the resource groups created by the module"
  value       = [for rg in module.resource_group : rg.rg_id]
}

output "vnet_ids" {
  description = "IDs of the virtual networks created by the module"
  value       = [for vnet in module.vnet : vnet.vnet_id]
}

output "vnet_names" {
  description = "Names of the virtual networks created by the module"
  value       = [for vnet in module.vnet : vnet.vnet_name]
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = [for subnet in module.subnet : subnet.subnet_id]
}