local RaiLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib')))()
local Window = RaiLib:MakeWindow({
  Name = "Privileged  |  Key System", HidePremium = false, IntroText = "Privileged | Carregando...", SaveConfig = true, ConfigFolder = "COSMIC-FILE-KEY"
})

RaiLib:MakeNotification({
  Name = "Discord:",
  Content = "discord.gg/invite",
  Image = "rbxassetid://13132648697",
  Time = 5
})

_G.Jajdnsojwkqmwbwkskslanaoak = {}
_G.oqbwjwlwkkqjqjsjs = "string"

Jajdnsojwkqmwbwkskslanaoak["Trial"] = true

function CheckKey()
RaiLib:Destroy()
RaiLib:MakeNotification({
  Name = "Sucesso!",
  Content = "Você injetou o script.",
  Image = "rbxassetid://13132648697",
  Time = 10
})
wait(3)

end

function incorreto()
RaiLib:MakeNotification({
  Name = "Key Inválida",
  Content = "Sua Key está inválida.",
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
  _G.oqbwjwlwkkqjqjsjs = Value
  end
})

MainTab:AddButton({
  Name = "Login",
  Callback = function()
  if _G.Jajdnsojwkqmwbwkskslanaoak[_G.oqbwjwlwkkqjqjsjs] then
  CheckKey()
  else
    incorreto()
  end
  end
})

RaiLib:Init()