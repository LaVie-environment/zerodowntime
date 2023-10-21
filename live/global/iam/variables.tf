variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is true."
  default     = true
}

variable "user_names" {
  description = "Name of the IAM"
  type        = list(string)
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables have defaults, but may be overridden.
# ------------------------------------------------------------------------------
variable "path" {
  type        = string
  description = "(Optional) Path in which to create the user. Default is \"/\"."
  default     = "/"
}

variable "permissions_boundary" {
  type        = string
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the user."
  default     = null
}

variable "force_destroy" {
  type        = bool
  description = "(Optional) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. Default is false."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Key-value map of tags for the IAM user."
  default     = {}
}

variable "policy_statements" {
  type        = any
  description = "(Optional) List of IAM policy statements to attach to the User as an inline policy."
  default     = []
}

