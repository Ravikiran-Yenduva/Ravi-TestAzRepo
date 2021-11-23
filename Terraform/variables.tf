variable "rg_name" {
  type        = string
  default     = "463-3730f55f-building-infrastructure-with-azure-pi"
  description = "Provide the name of existing resource group to spin the resources"
}
variable "location" {
  type        = string
  description = "Azure Location"
  default     = "East US"
}
variable "storage_account_name" {
  type        = string
  default     = "storravi955"
  description = "Storage account name"
}