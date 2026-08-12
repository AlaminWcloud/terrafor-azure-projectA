## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.81 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.81.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_linux_virtual_machine.vm-linux-dev-uks-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.vm-linux-nic-dev-uks-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_resource_group.rg-projectA-dev-uks-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.Vm-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-project-dev-uks-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | n/a | `list(string)` | <pre>[<br/>  "10.0.0.0/24",<br/>  "10.0.1.0/24"<br/>]</pre> | no |
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | n/a | `set(string)` | <pre>[<br/>  "10.0.0.0/16"<br/>]</pre> | no |
| <a name="input_admin_ssh_public_key_path"></a> [admin\_ssh\_public\_key\_path](#input\_admin\_ssh\_public\_key\_path) | n/a | `string` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | n/a | `string` | `"adminuser"` | no |
| <a name="input_linux_vm_name"></a> [linux\_vm\_name](#input\_linux\_vm\_name) | the name of the linux machine | `string` | n/a | yes |
| <a name="input_linux_vm_nic_name"></a> [linux\_vm\_nic\_name](#input\_linux\_vm\_nic\_name) | n/a | `string` | `"vm-linux-nic-dev-uks-001"` | no |
| <a name="input_linux_vm_subnet_name"></a> [linux\_vm\_subnet\_name](#input\_linux\_vm\_subnet\_name) | n/a | `string` | `"Vm-subnet"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"uk south"` | no |
| <a name="input_os_disk"></a> [os\_disk](#input\_os\_disk) | n/a | <pre>object({<br/>    caching              = string<br/>    storage_account_type = string<br/>  })</pre> | <pre>{<br/>  "caching": "ReadWrite",<br/>  "storage_account_type": "Standard_LRS"<br/>}</pre> | no |
| <a name="input_rescource_group_name"></a> [rescource\_group\_name](#input\_rescource\_group\_name) | the name of the resource group | `string` | `"rg-projectA-dev-uks-001"` | no |
| <a name="input_source_image_reference"></a> [source\_image\_reference](#input\_source\_image\_reference) | n/a | `map(string)` | <pre>{<br/>  "offer": "ubuntu-24_04-lts",<br/>  "publisher": "Canonical",<br/>  "sku": "server",<br/>  "version": "latest"<br/>}</pre> | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | virtual network name | `string` | `"vnet-projectA-dev-uks-001"` | no |

## Outputs

No outputs.
