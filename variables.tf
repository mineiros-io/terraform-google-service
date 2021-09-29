# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "service" {
  description = "(Required) The service to enable."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "project" {
  description = "(Optional) The project ID. If not provided, the provider project is used."
  type        = string
  default     = null
}

variable "disable_dependent_services" {
  description = "(Optional) If true, services that are enabled and which depend on this service should also be disabled when this service is destroyed. If false or unset, an error will be generated if any enabled services depend on this service when destroying it."
  type        = bool
  default     = true
}

variable "disable_on_destroy" {
  description = "(Optional) If true, disable the service when the terraform resource is destroyed. Defaults to true. May be useful in the event that a project is long-lived but the infrastructure running in that project changes frequently."
  type        = bool
  default     = true
}

variable "timeouts" {
  description = "(Optional) How long certain operations are allowed to take before being considered to have failed."
  type        = any
  default     = {}
}

# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is 'true'."
  default     = true
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends_on. Default is '[]'."
  default     = []
}
