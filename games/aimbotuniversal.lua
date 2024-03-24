local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()

_G.systemEnabled = false
_G.fov = 50

local MainWindow = RaiLib:MakeWindow{
    Name = "Privileged  |  Aimbot Universal",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "aimbot-pg"
}

local Config = MainWindow:MakeTab{
    Name = "Config",
    Icon = "rbxassetid://16848226251",
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

Tab:AddSlider({
	Name = "Fov",
	Min = 1,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Fov",
	Callback = function(Value)
		_G.fov = Value
	end    
})