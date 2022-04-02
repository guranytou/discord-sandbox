resource "discord_role" "test_role1" {
  server_id   = discord_server.my_server.id
  name        = "test_role1"
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.blue.dec
  hoist       = true
  mentionable = true
  position    = 1
}

data "discord_permission" "member" {
  view_channel     = "allow"
  send_messages    = "allow"
  use_vad          = "deny"
  priority_speaker = "deny"
}

data "discord_color" "blue" {
  hex = "#4287f5"
}

resource "discord_role" "bad_role" {
  server_id   = discord_server.my_server.id
  name        = "bad_role"
  permissions = 0
  color       = data.discord_color.bad.dec
  hoist       = false
  mentionable = true
  position    = 2
}

data "discord_color" "bad" {
  hex = "#e65323"
}

data "discord_permission" "bad" {
  view_channel = "deny"
}