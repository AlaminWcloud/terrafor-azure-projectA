variable "rescource_group_name" {
  description = "the name of the resource group"
  type        = string
  default     = "rg-projectA-dev-uks-001"

}
variable "virtual_network_name" {
  description = "virtual network name"
  type        = string
  default     = "vnet-projectA-dev-uks-001"

}

variable "address_prefixes" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}
variable "address_space" {
  type    = set(string)
  default = ["10.0.0.0/16"]

}
variable "location" {
  type    = string
  default = "uk south"

}
variable "linux_vm_subnet_name" {
  type = string
  default = "Vm-subnet"
}
variable "linux_vm_nic_name" {
  type = string
  default = "vm-linux-nic-dev-uks-001"
  
}
variable "linux_vm_name" {
  description = "the name of the linux machine"
  type = string
}
variable "source_image_reference" {
  type = map(string)
  default = {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}