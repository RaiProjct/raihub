local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

_G.espcheck = false
_G.systemEnabled = false

function espcheck()
  if _G.espcheck == true then
    espLib:Load()
  else
    espLib:Unload()
  end

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

Config:AddButton({
	Name = "Esp Player",
	Callback = function()
	  if _G.espcheck == false then
	    _G.espcheck = true
	    wait(.1)
	    espcheck()
	  else
	    _G.espcheck = false
	    wait(.1)
	    espcheck()
  	end
  	end
})