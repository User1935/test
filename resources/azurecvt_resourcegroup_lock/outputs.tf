output "id" {
  value       = module.azurecvt_resourcegroup.id
  description = "Returns Resource Group ID."
}
output "location" {
  value       = module.azurecvt_resourcegroup.location
  description = "Returns Resource Group Location."
}
output "name" {
  value       = module.azurecvt_resourcegroup.name
  description = "Returns Resource Group Name."
}
output "tags" {
  value       = module.azurecvt_resourcegroup.tags
  description = "Returns Resource Group Tags."
}
output "lock_id" {
  value       = module.azurecvt_resourcegroup.id
  description = "Returns Resource Group Lock ID."
}
output "lock_name" {
  value       = resource.azurerm_management_lock.resourcegroup_levellock.*.name
  description = "Returns Resource Group Lock Name."
}
output "lock_scope" {
  value       = resource.azurerm_management_lock.resourcegroup_levellock.*.scope
  description = "Returns Resource Group Lock scope"
}
output "lock_level" {
  value       = resource.azurerm_management_lock.resourcegroup_levellock.*.lock_level
  description = "Returns Resource Group Lock Level"
}
output "lock_notes" {
  value       = resource.azurerm_management_lock.resourcegroup_levellock.*.notes
  description = "Returns Resource Group Lock Note."
}
