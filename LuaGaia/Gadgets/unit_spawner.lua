function gadget:GetInfo()
  return {
    name      = "NpcSpawner",
    desc      = "Spawn NPC's",
    author    = "TurBoss",
    date      = "16-07-14",
    license   = "GNU GPL v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end


SpawnTimer = {}
SpawnTimer.__index = SpawnTimer

local gaiaTeamID = Spring.GetGaiaTeamID()

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

------------------------------------------------------------------------
------------------------------------------------------------------------

function SpawnTimer.create(timeToSpawn)
	local tim = {}             -- our new object
	setmetatable(tim,SpawnTimer)  -- make NpcTimer handle lookup
	
	--tim.npc = npc      -- initialize our object
	tim.enabled = false
	tim.spawnTime = timeToSpawn
	tim.startTime = 0
	return tim
end

function SpawnTimer:set_timer()
	--Spring.Echo("Timer")
	self.startTime, _ = Spring.GetGameFrame() 
	self.enabled = true
end

function SpawnTimer:check()
	return self.enabled
end

function SpawnTimer:update(gameFrame)

	local gameFrame = gameFrame
	--if self.enabled then
	--	Spring.Echo(gameFrame - self.startTime)
	--end
	
	if gameFrame - self.startTime >= self.spawnTime and self.enabled then
		self.enabled = false
		return true
	else
		return false
	end
end

------------------------------------------------------------------------
------------------------------------------------------------------------

function gadget:Initialize ()	
	if Game.gameName ~= "Jauria RTS"	then
		Spring.Echo ("PLAY WITH Jauria RTS!!")
		gadgetHandler:RemoveGadget()
		return
	end
	
	timer1 = SpawnTimer.create(8000)	--gusano --timer dramon
	timer2 = SpawnTimer.create(8000)	--gusano
	timer3 = SpawnTimer.create(5000)	--escorpion
	
end

function gadget:GameStart()
	
	spawnNPC(1)
	spawnNPC(2)
	spawnNPC(3)
	
	spawnTurrets1()
	spawnTurrets2()
	
	--unselectableTurrents()
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	if unitID == 10600 then
		timer1:set_timer()
	elseif unitID == 10601 then
		timer2:set_timer()
	elseif unitID == 10602 then
		timer3:set_timer()
	end
end

function gadget:GameFrame(n)
	if timer1:update(n) then spawnNPC(1) end
	if timer2:update(n) then spawnNPC(2) end
	if timer3:update(n) then spawnNPC(3) end

end


--spawn npcs

function spawnNPC(i)
	--Spring.Echo("Spawn Npc " .. i)
	npc = {
		{name="mechabot",x=1732,z=2259,unitID=10600,rot="west",},
		{name="mechabot",x=3424,z=2832,unitID=10601,rot="east",},
		
		{name="gusano",x=2548,z=2548,unitID=10602,rot="west",},
	}
	Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, gaiaTeamID, false, true, npc[i].unitID)
end

function spawnTurrets1()
	--Spring.Echo("Spawns Turrents 1")
	npc = {

		{name="metralleta",x=330,z=2330,unitID=10500,rot="east",},
		{name="metralleta",x=330,z=2770,unitID=10501,rot="east",},

	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 0, npc[i].z, npc[i].rot, 0, false, true, npc[i].unitID)
	end
end

function spawnTurrets2()
	--Spring.Echo("Spawns Turrents 2")
	npc = {

		{name="metralleta",x=4790,z=2330,unitID=10508,rot="west",},
		{name="metralleta",x=4790,z=2770  ,unitID=10509,rot="west",},

	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 0, npc[i].z, npc[i].rot, 1, false, true, npc[i].unitID)
	end
end
