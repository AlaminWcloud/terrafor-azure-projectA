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