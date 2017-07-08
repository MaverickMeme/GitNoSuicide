AddCSLuaFile("sv_dontsuicide.lua")
AddCSLuaFile("config.lua")

include("config.lua")

local function whySuicide(ply)
	if ply:IsPlayer() then
		ply:ChatPrint(ChatPrinted)
	return false
	end
end
hook.Add("CanPlayerSuicide", "noSuicide", whySuicide)

print("- Maverick Nosuicide Loaded -")