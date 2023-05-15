provider "google" {
  project = "my-test-project"
  region  = "us-central1"
  zone    = "us-central1-c"
}

provider "aws" {
  region     = "us-central-1"
  access_key = "xxxxxx"
  secret_key = "xxxxxx"
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}