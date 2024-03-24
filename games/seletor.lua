local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

local Main2Window = RaiLib:MakeWindow{
    Name = "Privileged  |  Seletor",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "sg-pg"
}

local GameTab = Main2Window:MakeTab{
    Name = "Games",
    Icon = "rbxassetid://16848188385",
    PremiumOnly = false
}
local FeaturesTab = Main2Window:MakeTab{
    Name = "Features",
    Icon = "rbxassetid://16848191701",
    PremiumOnly = false
}

GameTab:AddButton{
    Name = "Dragon Blox Ultimate",
    Callback = function()
      RaiLib:Destroy()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/games/dragonballultimate.lua")))()
    end
}
FeaturesTab:AddButton{
    Name = "Aimbot + Esp Chams",
    Callback = function()
      RaiLib:Destroy()
      espLib.options.boxes = false
      espLib.options.limitDistance = true
      espLib.options.teamCheck = true
      espLib.options.teamColor = true
      espLib:Load()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()
    end
}

RaiLib:Init()