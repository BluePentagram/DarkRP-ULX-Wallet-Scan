local CATEGORY_NAME = "DarkRP"


function ulx.scanmoney( calling_ply )
	local number1 = 1
	local number2  = 0
	for k,v in pairs(player.GetAll()) do
		if number1 <= 9 then number2 = "0" else number2 = "" end
		calling_ply:PrintMessage( HUD_PRINTCONSOLE, "Scan: "..number2..number1.."  Name: "..v:Nick().."	Money: "..v.DarkRPVars.money )
		number1 = number1 + 1
	end
	calling_ply:PrintMessage( HUD_PRINTTALK , "Everyone on the server money has been printed to the console" )
	-- Made By Bluey
end
local scanmoney = ulx.command( CATEGORY_NAME, "ulx scanmoney", ulx.scanmoney, "!scanmoney" )
scanmoney:defaultAccess( ULib.ACCESS_ADMIN )
scanmoney:help( "Scan everyone money." )