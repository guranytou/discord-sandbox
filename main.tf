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

resource "discord_server" "my_server" {
  name              = "gurany_touのサーバー"
  region            = "japan"
  system_channel_id = "955825994344853537"
}

resource "discord_category_channel" "textchannel" {
  name      = "Text Channels"
  server_id = discord_server.my_server.id
  position  = 0
}

resource "discord_text_channel" "general" {
  name      = "general"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.textchannel.id
  position  = 0
}

resource "discord_category_channel" "voicechannel" {
  name      = "Voice Channels"
  server_id = discord_server.my_server.id
  position  = 0
}

resource "discord_voice_channel" "general" {
  name      = "General"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.voicechannel.id
  position  = 0
}



