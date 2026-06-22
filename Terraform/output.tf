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

output "public_ip_ids" {
  description = "IDs of the public IPs created by the module"
  value       = [for pip in module.pip : pip.public_ip_id]
}

output "public_ip_addresses" {
  description = "IP addresses of the public IPs created by the module"
  value       = [for pip in module.pip : pip.public_ip_address]
}

output "nsg_association_ids" {
  description = "IDs of the NSG associations created by the module"
  value       = { for k, v in module.nsg_association : k => v.nsg_association_id }
}

