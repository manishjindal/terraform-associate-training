
terraform {
  required_version = ">=1.3"
  required_providers {
    google = ">=4.0"
  }
  backend "gcs" {
    bucket = "<gcs-bucket-name>"
  }

}

# terraform {
#   required_version = ">=1.3"
#   required_providers {
#     google = ">=4.0"
#   }
#   backend gcs {
#     bucket = "<gcs-bucket-name>"
#     prefix = "terraform"
#   }
# }