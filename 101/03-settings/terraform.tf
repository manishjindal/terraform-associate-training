# terraform {
#   required_version = "1.3.0"
# }

# terraform {
#   required_version = ">1.3"
# }


# terraform {
#   required_version = ">1.3"
#   required_providers {
#     google = "< 4.0"
#   }
# }



provider "oci" {}
terraform {
  required_providers {
    oci = {
      source  = "oci"
      version = "4.117.0"
    }
  }
}

# provider "kubernetes" {}
# terraform {
#   required_providers {
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = "2.20.0"
#     }
#   }
# }