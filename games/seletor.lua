local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()

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
    Icon = "rbxassetid://16845953528",
    PremiumOnly = false
}

GameTab:AddButton{
    Name = "Dragon Blox Ultimate",
    Callback = function()
      RaiLib:Destroy()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/games/dragonballultimate.lua")))()
    end
}

RaiLib:Init()