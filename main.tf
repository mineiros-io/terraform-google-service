resource "google_project_service" "service" {
  count = var.module_enabled ? 1 : 0

  depends_on = [var.module_depends_on]

  project                    = var.project
  service                    = var.service
  disable_dependent_services = var.disable_dependent_services
  disable_on_destroy         = var.disable_on_destroy

  timeouts {
    create = try(var.timeouts.create, null)
    read   = try(var.timeouts.read, null)
    update = try(var.timeouts.update, null)
    delete = try(var.timeouts.delete, null)
  }
}
