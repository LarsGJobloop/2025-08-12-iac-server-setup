terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.52.0"
    }
  }
}

variable "hcloud_token" {
  description = "Hetzner API token"
  type        = string
  sensitive   = true
}

provider "hcloud" {
  token = var.hcloud_token
}

variable "ssh_key" {
  description = "The SSH Public Key for the server"
  type        = string
}

module "app" {
  source = "./dotnet-app"

  # Repo information
  git_hub_repo = "https://github.com/LarsGJobloop/2025-08-12-iac-server-setup"
  branch       = "main"

  # Debug Key
  ssh_key = var.ssh_key
}
