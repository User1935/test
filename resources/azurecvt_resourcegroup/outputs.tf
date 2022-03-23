output "id" {
  value       = resource.azurerm_resource_group.resourcegroup.id
  description = "Returns Resource Group ID."
}
output "location" {
  value       = resource.azurerm_resource_group.resourcegroup.location
  description = "Returns Resource Group Location."
}
output "name" {
  value       = resource.azurerm_resource_group.resourcegroup.name
  description = "Returns Resource Group Name."
}
output "tags" {
  value       = resource.azurerm_resource_group.resourcegroup.tags
  description = "Returns Resource Group Tags."
}
