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

resource "discord_text_channel" "test" {
  name      = "test_channnel"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.textchannel.id
  position  = 0
}

resource "discord_text_channel" "test1" {
  name      = "test_channne5"
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
