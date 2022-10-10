module "test" {
  source = "../.."

  # add all required arguments
  service = "iam.googleapis.com"

  # add all optional arguments that create additional/extended resources

  # add most/all other optional arguments
  project                    = "unit-complete-${local.random_suffix}"
  disable_dependent_services = true
  disable_on_destroy         = true

  timeouts = {
    create = "30m"
    read   = "30m"
    update = "30m"
    delete = "30m"
  }
}
