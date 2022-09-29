resource "discord_category_channel" "textchannel" {
  name      = "Text Channels"
  server_id = discord_server.my_server.id
}

resource "discord_text_channel" "general" {
  name      = "general"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.textchannel.id
}

resource "discord_text_channel" "test" {
  name      = "test_channnel"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.textchannel.id
}

resource "discord_text_channel" "test1" {
  name                     = "test_channne3"
  server_id                = discord_server.my_server.id
  category                 = discord_category_channel.textchannel.id
  sync_perms_with_category = false
}

resource "discord_category_channel" "voicechannel" {
  name      = "Voice Channels"
  server_id = discord_server.my_server.id
}

resource "discord_voice_channel" "general" {
  name      = "General"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.voicechannel.id
}

resource "discord_voice_channel" "genera2" {
  name      = "General2"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.voicechannel.id
}