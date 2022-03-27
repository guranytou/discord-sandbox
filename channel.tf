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
  name      = "test_channne3"
  server_id = discord_server.my_server.id
  category  = discord_category_channel.textchannel.id
  position  = 0
}

data "discord_permission" "test_channel" {
  view_channel  = "allow"
  send_messages = "deny"
}

resource "discord_channel_permission" "chatting" {
  channel_id   = discord_text_channel.test1.id
  type         = "role"
  overwrite_id = discord_role.test_role1.id
  allow        = data.discord_permission.test_channel.allow_bits
  deny         = data.discord_permission.test_channel.deny_bits
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
