provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = "1.34.0"
    }
  }

  required_version = "~> 1.0"
}


provider "grafana" {
  url  = "http://a6a0e264e786f471ea65babdb32fb8da-597473948.us-west-2.elb.amazonaws.com/"
  auth = "glsa_ZBiGBWCajA618uJhP76Ilyko5xPBmxnV_8e642424"
}

