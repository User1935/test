module "azurecvt_regions" {
  source       = "./../../../azurecvt_regions"
  azure_region = "West Europe"
}

output "location" {
  value = module.azurecvt_regions.location
}

output "location_cli" {
  value = module.azurecvt_regions.location_cli
}

output "location_short" {
  value = module.azurecvt_regions.location_short
}

output "location_slug" {
  value = module.azurecvt_regions.location_slug
}

output "location_fixed4char" {
  value = module.azurecvt_regions.location_fixed4char
}
