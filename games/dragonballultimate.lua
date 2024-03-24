local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

_G.espcheck = false
_G.autotrain = false

function espcheck()
  if _G.espcheck == true then
    espLib:Load()
  else
    espLib:Unload()
  end
end
function autotrain()
    while _G.autotrain do
        wait(.1)
        local args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
        wait(.1)
        args = {1, false, CFrame.new(-477.7599182128906, 219.12937927246094, -3772.001953125) * CFrame.Angles(-3.141592502593994, -0.8255488276481628, -3.141592502593994)}
        game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
        wait(.1)
        args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
        wait(.1)
        args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
        wait(.1)
        args = {"Blacknwhite27", 1}
        game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
    end
end
function checkprotocol()
  if _G.protocolprocesskeyrailibcheckscriptkey == false then
    RaiLib:Destroy()
    game.Players.LocalPlayer:Kick("Você precisa passar pelo sistema de Key primeiro")
end
end
checkprotocol()

local MainWindow = RaiLib:MakeWindow{
    Name = "Privileged  | Dragon Blox Ultimate",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "Main-pg"
}

local MainFarmTab = MainWindow:MakeTab{
    Name = "Farm",
    Icon = "rbxassetid://16848191701",
    PremiumOnly = false
}
local MainEspTab = MainWindow:MakeTab{
    Name = "Esp",
    Icon = "rbxassetid://16848194152",
    PremiumOnly = false
}

MainFarmTab:AddButton({
	Name = "Auto Train",
	Callback = function()
	  if _G.autotrain == false then
	    _G.autotrain = true
	    wait(.1)
	    autotrain()
	  else
	    _G.autotrain = false
	    wait(.1)
      autotrain()
  	end
  	end
})

MainEspTab:AddButton({
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

RaiLib:Init()