function gadget:GetInfo()
  return {
    name      = "Rewards",
    desc      = "Reward players by killing npcs",
    author    = "TurBoss",
    date      = "16-07-14",
    license   = "GNU GPL v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end

local gaiaTeamID = Spring.GetGaiaTeamID()

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

function gadget:Initialize ()
	if Game.gameName ~= "Jauria RTS"	then
		Spring.Echo ("PLAY WITH Jauria RTS!!")
		gadgetHandler:RemoveGadget()
		return
	end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	regardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
end

function regardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	local unitName = UnitDefs[unitDefID].name
	--Spring.Echo(unitName)
	--Spring.Echo(Spring.GetPlayerInfo(0))
	local name = nil
	
	if unitTeam == gaiaTeamID and unitID == 10600 or unitID == 10601 or unitID == 10602 or unitID == 10603 then 
		Spring.AddTeamResource(attackerTeam, "m", 550)
	end
	
	if attackerTeam ~= nil then
		if attackerTeam ~= gaiaTeamID then
			if unitTeam ~= gaiaTeamID then
				if unitTeam ~= attackerTeam then
					if attackerID ~= 10500 and attackerID ~= 10501 and attackerID ~= 10502 and attackerID ~= 10503 and attackerID ~= 10504 and attackerID ~= 10505 and attackerID ~= 10506 and attackerID ~= 10507 and attackerID ~= 10508 and attackerID ~= 10509 then
						
						local name,_,_,_,_,_,_,_,_ = Spring.GetPlayerInfo(attackerTeam)
						if name == nil then
							name = "Bot"
						end
						
						if unitName == "cnm1" then
							Spring.Echo("NM-1 Eliminado dando 40 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 40)
						elseif unitName == "drk2" then
							Spring.Echo("RK-2 Eliminado dando 65 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 65)
						elseif unitName == "enk3" then
							Spring.Echo("NK-3 Eliminado dando 160 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 160)
						elseif unitName == "ftkt4" then
							Spring.Echo("TKT-4 Eliminado dando 550 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 550)
						elseif unitName == "glz5" then
							Spring.Echo("LZ-5 Eliminado dando 700 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 700)
						elseif unitName == "hdt6" then
							Spring.Echo("DT-6 Eliminado dando 1200 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 1200)
						elseif unitName == "arc" then
							Spring.Echo("RC Eliminado dando 140 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 140)
						elseif unitName == "bit0" then
							Spring.Echo("IT-0 Eliminado dando 180 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 180)
						elseif unitName == "torreta" then
							Spring.Echo("Torre Eliminada dando 1000 de metal a " .. name)
							Spring.AddTeamResource(attackerTeam, "m", 1000)
						end
					end
				end
			end
		end
	end
end
