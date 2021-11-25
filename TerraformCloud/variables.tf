variable "rg_name" {
  type        = string
  description = "Provide the name of existing resource group to spin the resources"
}
variable "location" {
  type        = string
  description = "Azure Location"
}
variable "appplan_name" {
  type        = string
  description = "Existing App plan name"
}
variable "function_name" {
  type        = string
  description = "Function app name"
}
variable "storage_account_name" {
  type        = string
  description = "Storage account name"
}
