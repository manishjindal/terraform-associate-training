module "kms" {
  source  = "terraform-google-modules/kms/google"
  version = "~> 2.2"

  project_id     = var.project_id
  location       = "europe"
  keyring        = "sample-keyring"
  keys           = ["foo", "spam"]
  set_owners_for = ["foo", "spam"]
  owners = [
    "group:one@example.com,group:two@example.com",
    "group:one@example.com",
  ]
}