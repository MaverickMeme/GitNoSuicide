AddCSLuaFile("config.lua")

include("config.lua")

local function whySuicide(ply)
	ply:SendLua( [[chat.AddText( Color(255,0,0),"[Anti-Suicide]:",Color(255,255,255),ChatPrinted ) ]] )
	return false
end
hook.Add("CanPlayerSuicide", "noSuicide", whySuicide)