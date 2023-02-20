
terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.9.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}


variable "enabled" {}

resource "helm_release" "karpenter_config" {
  count            = var.enabled ? 1 : 0
  name             = "karpenter-config"
  chart            = "${path.module}/karpenter-config"
}

