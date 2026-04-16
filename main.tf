# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.77.0"
    }
  }
  cloud {
    organization = "chris_lab"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }

  required_version = ">= 1.1.0"
}



provider "google" {
  project = var.google_project
  region  = var.region
}
