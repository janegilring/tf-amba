variable "action_group_arm_role_id" {
  type        = list(string)
  default     = []
  description = "Action group ARM role ID"
}

variable "action_group_email" {
  type        = list(string)
  default     = ["janegilring@microsoft.com"]
  description = "Action group email"
}

variable "amba_disable_tag_name" {
  type        = string
  default     = "MonitorDisable"
  description = "Tag name used to disable monitoring at the resource level."
}

variable "amba_disable_tag_values" {
  type        = list(string)
  default     = ["true", "Test", "Dev", "Sandbox"]
  description = "Tag value(s) used to disable monitoring at the resource level."
}

variable "bring_your_own_action_group_resource_id" {
  type        = list(string)
  default     = []
  description = "The resource id of the action group, required if you intend to use an existing action group for monitoring purposes."
}

variable "event_hub_resource_id" {
  type        = list(string)
  default     = []
  description = "The resource ID of the event hub."
}

variable "function_resource_id" {
  type        = string
  default     = ""
  description = "The resource ID of the Azure function."
}

variable "function_trigger_uri" {
  type        = string
  default     = ""
  description = "The trigger URI of the Azure function."
}

variable "location" {
  type        = string
  default     = "swedencentral"
  description = "Location"
}

variable "logic_app_callback_url" {
  type        = string
  default     = ""
  description = "The callback URL of the logic app."
}

variable "logic_app_resource_id" {
  type        = string
  default     = ""
  description = "The resource ID of the logic app."
}

variable "management_subscription_id" {
  type        = string
  default     = "5d743864-3e9e-4dc1-b446-1982647eeaf8"
  description = "Management subscription ID"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-amba-monitoring-001"
  description = "The resource group where the resources will be deployed."
}

variable "tags" {
  type = map(string)
  default = {
    _deployed_by_amba = "True"
  }
  description = "(Optional) Tags of the resource."
}

variable "webhook_service_uri" {
  type        = list(string)
  default     = []
  description = "The service URI of the webhook."
}

variable "user_assigned_managed_identity_name" {
  type        = string
  default     = "id-amba-alz-arg-reader-prod-001"

}

variable "root_management_group_name" {
  type        = string
  default     = "amba-poc"
  description = "Root management group name"

}