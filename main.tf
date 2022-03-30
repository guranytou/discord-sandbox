terraform {
  required_providers {
    discord = {
      source = "Lucky3028/discord"
      version = "1.0.8"
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
}



