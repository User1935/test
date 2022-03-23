<img alt="ConvaTec" src="https://upload.wikimedia.org/wikipedia/en/4/4c/ConvaTec_logo.svg"> <img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="200px">
# README
[![This is the link to Cloud][azure-badge]][azure] [![This is the CHANGELOG file][changelog-badge]][changelog] [![This is the NOTICE file][notice-badge]][notice] [![This is the LICENSE file][license-badge]][license]


# Azure regions module

This Terraform module is designed to help in using the AzureRM terraform provider.

It provides for an Azure region given in standard format, CLI format or slug format (used by Claranet tfwrapper) the
Azure standard format, a short format used for resource naming, the CLI format and a slug format.

Please refer to the [regions.tf](regions.tf) file for available regions.
Complete regions mapping is also available in [REGIONS.md](REGIONS.md) documentation.

<!-- BEGIN_TF_DOCS -->

#### Requirements

No requirements.
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider_random) | 3.1.2 |
#### Modules

No modules.
#### Resources

| Name | Type |
|------|------|
| [random_string.fullrandom](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [random_string.singlealphanum](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [random_string.singlechar](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource | 
#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_businessunit"></a> [businessunit](#input_businessunit) | (Required if ceg) business unit for composing resource name | `any` | n/a | yes |
| <a name="input_convention"></a> [convention](#input_convention) | (Required) naming convention methode to be used | `any` | n/a | yes |
| <a name="input_environment"></a> [environment](#input_environment) | (Required if ceg) environment for composing resource name | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | input name | `any` | n/a | yes |
| <a name="input_type"></a> [type](#input_type) | type of resource created as described in the README | `any` | n/a | yes |
| <a name="input_cvt_azlimits"></a> [cvt_azlimits](#input_cvt_azlimits) | limit for resources | `map` | <pre>{<br>  "aaa": 50,<br>  "acr": 49,<br>  "afw": 50,<br>  "asr": 50,<br>  "evh": 50,<br>  "functionapp": 60,<br>  "gen": 24,<br>  "kv": 24,<br>  "la": 63,<br>  "lb": 80,<br>  "lbrule": 80,<br>  "nic": 80,<br>  "nsg": 80,<br>  "pip": 80,<br>  "rg": 80,<br>  "snet": 80,<br>  "st": 24,<br>  "stdiag": 24,<br>  "vml": 64,<br>  "vmw": 15,<br>  "vnet": 64<br>}</pre> | no |
| <a name="input_cvt_prefix"></a> [cvt_prefix](#input_cvt_prefix) | ConvaTec recommended prefix | `map` | <pre>{<br>  "aaa": "aaa-",<br>  "acr": "acr",<br>  "afw": "afw-",<br>  "asr": "asr-",<br>  "evh": "evh-",<br>  "gen": "gen",<br>  "kv": "kv-",<br>  "la": "la",<br>  "lb": "lb",<br>  "nic": "nic-",<br>  "nsg": "nsg-",<br>  "pip": "pip-",<br>  "rg": "rg-",<br>  "snet": "snet-",<br>  "st": "st",<br>  "stdiag": "stdiag",<br>  "vm": "vm-",<br>  "vml": "vm-",<br>  "vmw": "vm-",<br>  "vnet": "vnet-"<br>}</pre> | no |
| <a name="input_postfix"></a> [postfix](#input_postfix) | (Optional) postfix to add to server name | `string` | `""` | no |
#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_max"></a> [max](#output_max) | n/a |
| <a name="output_rg"></a> [rg](#output_rg) | n/a |

### Example
```hcl

```



<!-- END_TF_DOCS -->

## Related documentation

Azure regions: [azure.microsoft.com/en-us/global-infrastructure/regions/](https://azure.microsoft.com/en-us/global-infrastructure/regions/)

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
