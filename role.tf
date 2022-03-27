resource "discord_role" "test_role1" {
  server_id   = discord_server.my_server.id
  name        = "test_role1"
  permissions = data.discord_permission.member.allow_bits
  color       = data.discord_color.blue.dec
  hoist       = true
  mentionable = true
  position    = 0
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