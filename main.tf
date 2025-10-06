locals {
  # var.waypoint_add_on includes an ephemeral suffix, we just need to extract it for our
  # own evil purposes`
  add_on_elements = split("-", var.waypoint_add_on)
  random_suffix   = local.add_on_elements[length(local.add_on_elements) - 1]
}

data "tfe_outputs" "waypoint_application_workspace_outputs" {
  workspace = var.waypoint_application
}

resource "tfe_workspace" "ephemeral" {
  name                           = "${var.waypoint_application}-ephemeral-${local.random_suffix}"
  project_id                     = data.tfe_outputs.waypoint_application_workspace_outputs.nonsensitive_values.tfe_project_id
  terraform_version              = "1.12.2"
  auto_destroy_activity_duration = var.auto_destroy_activity_duration
}
