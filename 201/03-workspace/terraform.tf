# Hardcode bucket name
# terraform {
#   required_version = ">=1.3"
#   required_providers {
#     google = ">=4.0"
#   }
#   backend gcs {
#     bucket = "<gcs-bucket-name>"
#   }
# }

# Hardcode bucket and prefix name
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

# Move bucket and prefix name to file
terraform {
  required_version = ">=1.3"
  required_providers {
    google = ">=4.0"
  }
  backend "gcs" {
    bucket = "<bucket-name>"
  }
}
