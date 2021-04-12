if SERVER then
	AddCSLuaFile("nosuicide/config.lua")
	include("nosuicide/config.lua")
	util.AddNetworkString("nosuicide_chatMsg")

	local function WhySuicide(ply)
		if ply:IsPlayer() then
			net.Start("nosuicide_chatMsg")
			net.Send(ply)
			return false
		end
	end
	hook.Add("CanPlayerSuicide","dont_suicide", WhySuicide)

else
	include("nosuicide/config.lua")
	net.Receive("nosuicide_chatMsg", function()
		chat.AddText(Color(255,0,0),"[Anti-Suicide]: ",Color(255,255,255), nosuicide.ChatPrinted)
		chat.PlaySound()
	end)

end