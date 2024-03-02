local RaiLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib')))()
local Window = OrionLib:MakeWindow({Name = "Privileged  |  Key System", HidePremium = false, IntroText = "Privileged | Carregando...", SaveConfig = true, ConfigFolder = "COSMIC-FILE-KEY"})

OrionLib:MakeNotification({
	Name = "Discord:",
	Content = "discord.gg/invite",
	Image = "rbxassetid://13132648697",
	Time = 5
})

_G.Key = "LsXk77CosmicHub"
_G.KeyInput = "string"

function CheckKey()
  OrionLib:Destroy()
OrionLib:MakeNotification({
	Name = "Sucesso!",
	Content = "Você ejetou o script.",
	Image = "rbxassetid://13132648697",
	Time = 10
})
    wait(3)
    
    end

function incorreto()
  OrionLib:MakeNotification({
	Name = "Key Incorreta",
	Content = "Você usou a key errada.",
	Image = "rbxassetid://13132648697",
	Time = 10
})
  end

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

MainTab:AddButton({
	Name = "Login",
	Callback = function()
      		if _G.KeyInput == _G.Key then
              CheckKey()
          else
              incorreto()
        end
  	end    
})

OrionLib:Init()