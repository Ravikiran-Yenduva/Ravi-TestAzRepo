variable "client_id" {
  type        = string
  description = "client_id"
}
variable "subscription_id" {
  type        = string
  description = "subscription_id"
}
variable "tenant_id" {
  type        = string
  description = "tenant_id"
}
variable "client_secret" {
  type        = string
  description = "client_secret"
}
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
