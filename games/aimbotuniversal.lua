local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()

_G.systemEnabled = false

local MainWindow = RaiLib:MakeWindow{
    Name = "Privileged  |  Aimbot Universal",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "aimbot-pg"
}

local Config = MainWindow:MakeTab{
    Name = "Config",
    Icon = "rbxassetid://16845695850",
    PremiumOnly = false
}

Config:AddButton{
    Name = "Aimbot",
    Callback = function()
      if _G.systemEnabled == false then
        _G.systemEnabled = true
      else
        _G.systemEnabled = false
    end
}