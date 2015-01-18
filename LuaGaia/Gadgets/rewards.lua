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
	rewardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
end

function rewardTeam(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	local unitName = UnitDefs[unitDefID].name
	--Spring.Echo(unitName)
	--Spring.Echo(Spring.GetPlayerInfo(0))
	local name = nil
	local isbegincontructed = {}
	if unitTeam == gaiaTeamID then
		if unitID == 10600 or unitID == 10601 then --gusano
			Spring.AddTeamResource(attackerTeam, "m", 1350)
		end
		if unitID == 10602 or unitID == 10603 or unitID == 10610 then --escorpion
			Spring.AddTeamResource(attackerTeam, "m", 1200)
		end
		if unitID == 10605 or unitID == 10606 or unitID == 10607 or unitID == 10608 or unitID == 10609 or unitID == 10604 then --cuellito
			Spring.AddTeamResource(attackerTeam, "m", 500)
		end
	end
	
	if attackerTeam ~= nil then
		if attackerTeam ~= gaiaTeamID then
			if unitTeam ~= gaiaTeamID then
				if unitTeam ~= attackerTeam then
					if attackerID ~= 10500 and attackerID ~= 10501 and attackerID ~= 10502 and attackerID ~= 10503 and attackerID ~= 10504 and attackerID ~= 10505 and attackerID ~= 10506 and attackerID ~= 10507 and attackerID ~= 10508 and attackerID ~= 10509 and attackerID ~= 10510 and attackerID ~= 10511 and attackerID ~= 10512 and attackerID ~= 10513 and attackerID ~= 10514 and attackerID ~= 10515 and attackerID ~= 10516 and attackerID ~= 10517 and attackerID ~= 10518 and attackerID ~= 10519 and attackerID ~= 10520 and attackerID ~= 10521 and attackerID ~= 10522 and attackerID ~= 10523 and attackerID ~= 10524 and attackerID ~= 10525 and attackerID ~= 10526 and attackerID ~= 10527 and attackerID ~= 10528 and attackerID ~= 10529 and attackerID ~= 10530 then
						_ ,_ , _, _, isbegincontructed = Spring.GetUnitHealth(unitID)
						if isbegincontructed == 1 then
							local name,_,_,_,_,_,_,_,_ = Spring.GetPlayerInfo(attackerTeam)
							if name == nil then
								name = "Bot"
							end
							
							--TORRETAS--
							
							if unitName == "torreta" then
								Spring.Echo("Tower killed, giving 700 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 700)
							elseif unitName == "torretapro" then
								Spring.Echo("Tower killed, giving 1000 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 1000)
							elseif unitName == "torrun" then
								Spring.Echo("Torrun killed, giving 600 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 600)
							elseif unitName == "metralleta" then
								Spring.Echo("Metralleta killed, giving 400 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 400)
							
							--JAURIA--
							
							elseif unitName == "cnm1" then
								Spring.Echo("NM-1 killed, giving 50 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 50)
							elseif unitName == "drk2" then
								Spring.Echo("RK-2 killed, giving 72 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 72)
							elseif unitName == "enk3" then
								Spring.Echo("NK-3 killed, giving 190 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 190)
							elseif unitName == "ftkt4" then
								Spring.Echo("TKT-4 killed, giving 560 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 560)
							elseif unitName == "glz5" then
								Spring.Echo("LZ-5 killed, giving 690 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 690)
							elseif unitName == "hdt6" then
								Spring.Echo("DT-6 killed, giving 1377 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 1377)
							elseif unitName == "arc" then
								Spring.Echo("RC killed, giving 100 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 100)
							elseif unitName == "bit0" then
								Spring.Echo("IT-0 killed, giving 140 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 140)
							
							--HEIKS--
							
							elseif unitName == "aheiker" then
								Spring.Echo("Heiker killed, giving 45 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 45)
							elseif unitName == "bheik" then
								Spring.Echo("Heik killed, giving 22 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 22)
							elseif unitName == "chaerik" then
								Spring.Echo("Haerik killed, giving 108 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 108)
							elseif unitName == "dhipso" then
								Spring.Echo("Hipso killed, giving 112 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 112)
							elseif unitName == "ehekor" then
								Spring.Echo("Hekor killed, giving 160 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 160)
							elseif unitName == "fhaek" then
								Spring.Echo("Haek killed, giving 210 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 210)
							elseif unitName == "gheiknado" then
								Spring.Echo("Heiknado killed, giving 345 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 345)
							elseif unitName == "hheibok" then
								Spring.Echo("Heibok killed, giving 655 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 655)
								
								--CAOS--
								
							elseif unitName == "aadept" then
								Spring.Echo("Adept killed, giving 50 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 50)
							elseif unitName == "braider" then
								Spring.Echo("Raider killed, giving 66 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 66)
							elseif unitName == "cmarauder" then
								Spring.Echo("Marauder killed, giving 84 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 84)
							elseif unitName == "dbesieger" then
								Spring.Echo("Besieger killed, giving 204 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 204)
							elseif unitName == "eputris" then
								Spring.Echo("Putris killed, giving 260 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 260)
							elseif unitName == "fdesolator" then
								Spring.Echo("Desolator killed, giving 370 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 370)
							elseif unitName == "gjuggernaut" then
								Spring.Echo("Juggernaut killed, giving 716 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 716)
							elseif unitName == "harchaon" then
								Spring.Echo("Archaon killed, giving 1440 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 1440)
								
								--EUROPE--
								
							elseif unitName == "aprospector" then
								Spring.Echo("Prospector killed, giving 50 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 50)
							elseif unitName == "bmilitia" then
								Spring.Echo("Militia killed, giving 58 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 58)
							elseif unitName == "cberserker" then
								Spring.Echo("Berserker killed, giving 68 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 68)
							elseif unitName == "doverkraft" then
								Spring.Echo("Overkraft killed, giving 204 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 204)
							elseif unitName == "evalkyria" then
								Spring.Echo("Valkyria killed, giving 310 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 310)
							elseif unitName == "fscorpio" then
								Spring.Echo("Scorpio killed, giving 210 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 420)
							elseif unitName == "gtaurus" then
								Spring.Echo("Taurus killed, giving 340 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 340)
							elseif unitName == "hatlas" then
								Spring.Echo("Atlas killed, giving 1404 of metal to " .. name)
								Spring.AddTeamResource(attackerTeam, "m", 1404)
							end
						end
					end
				end
			end
		end
	end
end
