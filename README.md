# Plates Of Mayhem
A Garry's Mod gamemode where you have to survive on "plates" floating in mid-air. Random things can happen, such as you receiving a gun, or your plate getting smaller.

This gamemode is a work in progress (which means there will be bugs) and I'll be updating this gamemode every once in a while. The only map this gamemode works on is "gm_mars" (https://steamcommunity.com/sharedfiles/filedetails/?id=294212909) .

How to add actions / events:

# Action
    - Insert this code at (POM.actions) and change at will:
```lua
	{msg = "%s random player(s) will do something.", action = function(plate)
		local p = plate:GetNWEntity("player", 0) -- If something is going to happen to the player
		if (p ~= 0 and p:IsValid()) then -- then
			p:Ignite(math.random(POM.settings.minIgnitionL, POM.settings.maxIgnitionL)) -- Ignite. This code could do anything to the player, such as flinging them into the air.
		end
	end},
```

# Event
    - Insert this code at (POM.events) and change at will:
```lua
	{msg = "Something will happen", action = function()
		local drop = ents.Create("npc_combinegunship") -- Creates a gunship
		drop:SetPos(POM.platePos + Vector(POM.plateDistInc * (math.random(1,100) / 10), POM.plateDistInc * (math.random(1,100) / 10), 200)) -- Sets its position
		drop:Spawn() -- Spawns it
	end},
```

# Config
```lua
POM.settings.plateActionDelay = 10
POM.settings.maxIgnitionL = 10
POM.settings.minIgnitionL = 5
POM.settings.maxHealthG = 50
POM.settings.smallModel = .8
POM.settings.bigModel = 1.2
POM.settings.velocity = 100
POM.settings.maxPlateScale = 5
POM.baseModel = "models/hunter/plates/plate8x8.mdl"
POM.plateModel = "models/hunter/plates/plate5x5.mdl"
POM.baseColor = Color(255, 255, 255)
POM.basePos = Vector(-2400,-1200,12000)
POM.platePos = Vector(-1000,-1900,12000)
POM.spawnModel = POM.baseModel
POM.spawnPos = POM.basePos + Vector(0,0,100)
POM.neededPlayers = 3
POM.gameStarted = false
POM.maxFallHeight = 11000
POM.playerDeathmatch = false
POM.plateDistInc = 350
```
