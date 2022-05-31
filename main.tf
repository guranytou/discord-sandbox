terraform {
  required_providers {
    discord = {
      source  = "aequasi/discord"
      version = "0.0.4"
    }
  }
}

provider "discord" {
  token = var.token
}

variable "token" {
  type = string
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
  name              = "gurany_touのサーバー"
  region            = "japan"
  system_channel_id = "955825994344853537"
}

output "server_id" {
  value = discord_server.my_server.server_id
}