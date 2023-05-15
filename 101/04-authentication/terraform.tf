terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.20.0"
    }
  }
  required_version = ">= 1.3"
}
