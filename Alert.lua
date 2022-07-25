-- Copyright (c) 2022 Lion Kortlepel. Use allowed under MIT license.

local minutes = 30
local message = "Cool..."

function discordReminder()
	MP.SendChatMessage(-1, message)
end

MP.CancelEventTimer("nMinTimer")

MP.CreateEventTimer("nMinTimer", 1000 * 60 * minutes)

MP.RegisterEvent("nMinTimer", "discordReminder")

