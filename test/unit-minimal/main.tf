module "test" {
  source = "../.."

  # add only required arguments and no optional arguments
  service = "iam.googleapis.com"
}
