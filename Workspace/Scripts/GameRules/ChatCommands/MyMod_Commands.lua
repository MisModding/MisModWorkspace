--- TODO: Rename or Delete `MyMod_ChatCommands.lua`
-- NOTE: Add Chat Commands Here or Remove this File
-- ────────────────────────────────────────────────────────────────────────────────
--- Example Mirror ChatCommand
---| Mirrors the Calling players Message
---| Usage: !mirror the message to mirror
---@type ChatCommand
ChatCommands['!mirror'] = function(playerId, command)
    local message = string.format(' -> You Said: %s', tostring(command or '[nothng]'))
    g_gameRules.game:SendTextMessage(4, playerId, message)
end
