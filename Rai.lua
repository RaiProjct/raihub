local RaiLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib')))()
local Window = RaiLib:MakeWindow({
  Name = "Privileged  |  Key System", HidePremium = false, IntroText = "Privileged | Carregando...", SaveConfig = true, ConfigFolder = "COSMIC-FILE-KEY"
})

_G.Jajdnsojwkqmwbwkskslanaoak = {}
_G.oqbwjwlwkkqjqjsjs = "string"

Jajdnsojwkqmwbwkskslanaoak["Trial"] = true

function CheckGame()
local gameid == game.PlaceID
if gameid == 6442957604 then
pctycoon()
else
  return;
end
end

function CheckKey()
RaiLib:Destroy()
RaiLib:MakeNotification({
  Name = "Sucesso!",
  Content = "Você injetou o script.",
  Image = "rbxassetid://13132648697",
  Time = 10
})
wait(3)
CheckGame()
end



function incorreto()
RaiLib:MakeNotification({
  Name = "Key Inválida",
  Content = "Sua Key está inválida.",
  Image = "rbxassetid://13132648697",
  Time = 10
})
end



local KeySystem = Window:MakeTab({
  Name = "Key System",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})



KeySystem:AddTextbox({
  Name = "Enter Key",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
  _G.oqbwjwlwkkqjqjsjs = Value
  end
})



KeySystem:AddButton({
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