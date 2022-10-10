module "test" {
  source = "../.."

  module_enabled = false

  # add all required arguments
  service = "iam.googleapis.com"

  # add all optional arguments that create additional/extended resources
}
