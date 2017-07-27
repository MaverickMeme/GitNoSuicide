if SERVER then
	AddCSLuaFile("config.lua")
	include("config.lua")

	util.AddNetworkString("ch_Mg")

	local function WhySuicide(ply)
		if ply:IsPlayer() then
			net.Start("ch_Mg")
			net.Send(ply)
			return false
		end
	end
	hook.Add("CanPlayerSuicide","dont_suicide", WhySuicide)

else

	net.Receive("ch_Mg", function()
		chat.AddText(Color(255,0,0),"[Anti-Suicide]: ",Color(255,255,255),ChatPrinted)
		chat.PlaySound()
	end)

end