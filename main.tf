terraform {
  required_providers {
    discord = {
      source  = "guranytou/discord"
      version = "0.0.8"
    }
  }
}

variable "token" {}

provider "discord" {
  token = var.token
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "p4u2_discord_server"

    workspaces {
      name = "discord-sandbox"
    }
  }
}

resource "discord_server" "my_server" {
  name   = "gurany_touのサーバー"
  region = "japan"
}

output "server_id" {
  value = discord_server.my_server.server_id
}