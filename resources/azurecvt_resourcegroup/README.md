<img alt="ConvaTec" src="https://upload.wikimedia.org/wikipedia/en/4/4c/ConvaTec_logo.svg"> <img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="200px">
# README
[![This is the link to Cloud][azure-badge]][azure] [![This is the CHANGELOG file][changelog-badge]][changelog] [![This is the NOTICE file][notice-badge]][notice] [![This is the LICENSE file][license-badge]][license]


# Overview

**Resource: azurecvt_resourcegroup**

Creates an Azure resource group using Convatec 's Cloud Adoption Framework Naming Standards.

<!-- BEGIN_TF_DOCS -->

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | ~> 2.98 |
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | 2.99.0 |
#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azurecvt_naming"></a> [azurecvt_naming](#module_azurecvt_naming) | ./../azurecvt_naming | n/a |
#### Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resourcegroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource | 
#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_businessunit"></a> [businessunit](#input_businessunit) | (Required if type=convatec) Business unit for composing resource name. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input_environment) | (Required if type=convatec) environment for composing resource name. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input_location) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_convention"></a> [convention](#input_convention) | (Required) Naming convention methode to be used for composing name. Possible values are: passthrough, cafclassic, cafrandom, random and convatec. | `string` | `"convatec"` | no |
| <a name="input_postfix"></a> [postfix](#input_postfix) | (Optional) postfix to add while composing resource name. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input_tags) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `map(string)` | `null` | no |
#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | Returns Resource Group ID. |
| <a name="output_location"></a> [location](#output_location) | Returns Resource Group Location. |
| <a name="output_name"></a> [name](#output_name) | Returns Resource Group Name. |
| <a name="output_tags"></a> [tags](#output_tags) | Returns Resource Group Tags. |

### Example
```hcl
module "azurecvt_resourcegroup_lock" {
  source       = "./../../../azurecvt_resourcegroup_lock"
  name         = "teste"
  businessunit = "tech"
  environment  = "prod"
  postfix      = "001"
  location     = "westeurope"
  convention   = "convatec"
  tags = {
    environment = "production"
    costcentre  = "cost center"
  }
}

```



<!-- END_TF_DOCS -->
### Limitations
### Known Issues
### Documentation

## Authors
Created and maintained by ConvaTec Cloud Engineering Group.
©Convatec 2022

## License
UNLICENSED - Copyright (C) ConvaTec - All Rights Reserved. See [license]

[azure]: https://portal.azure.com
[azure-badge]: https://img.shields.io/badge/cloud-Microsoft%20Azure-blue
[readme]: ./README.md
[readme-badge]: https://img.shields.io/badge/readme-information-red
[usage]: ./USAGE.md
[usage-badge]: https://img.shields.io/badge/usage-examples-lightgrey
[changelog]: ./CHANGELOG.md
[changelog-badge]: https://img.shields.io/badge/changelog-release-green
[license]: ./LICENSE.md
[license-badge]: https://img.shields.io/badge/license-%40ConvaTec-orange
[notice]: ./NOTICE.md
[notice-badge]: https://img.shields.io/badge/notice-%40copyright-lightgrey
