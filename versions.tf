terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    grafana = {
      source = "grafana/grafana"
    }
  }
  required_version = ">= 0.13"
}
