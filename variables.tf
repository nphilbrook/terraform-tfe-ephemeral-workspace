# AUTO-POPULATED BY WAYPOINT
variable "waypoint_add_on" {
  type = string
}

# Unused, but silences a warning
variable "waypoint_add_on_definition" {
  type = string
}

variable "waypoint_application" {
  type        = string
  description = "Name of the from Waypoint application - used for naming."
}
# END AUTO-POPULATED BY WAYPOINT

variable "auto_destroy_activity_duration" {
  type        = string
  description = "The duration of inactivity after which a destroy operation will be queued. Example format: 24h or 3d"
}

variable "terraform_organization" {
  description = "Existing HCP Terraform organization name. Populated by LZ Admin project variable set."
  type        = string
  default     = null
}
