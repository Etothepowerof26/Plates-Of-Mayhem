POM = {}
POM.settings = {}
-- // Actual Config \\ --
POM.settings.plateActionDelay = 10
POM.settings.maxIgnitionL = 10
POM.settings.minIgnitionL = 5
POM.settings.maxHealthG = 50
POM.settings.smallModel = .8
POM.settings.bigModel = 1.2
POM.settings.velocity = 100
POM.settings.maxPlateScale = 5
-- // Below designed to cope with OCD \\ --
POM.baseModel = "models/hunter/plates/plate8x8.mdl"
POM.baseColor = Color(255, 255, 255)
POM.basePos = Vector(-2400,-1200,12000)

POM.plateModel = "models/hunter/plates/plate5x5.mdl"
POM.plateDistInc = 350
POM.platePos = Vector(-1000,-1900,12000)
-- // Other settings \\ --
POM.spawnPos = POM.basePos + Vector(0,0,100)
POM.neededPlayers = 3
POM.maxFallHeight = 11000