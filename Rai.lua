local RaiLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib')))()
local MainWindow = RaiLib:MakeWindow({
  Name = "Privileged  |  Key System",
  HidePremium = false,
  IntroText = "Privileged | Carregando...",
  SaveConfig = true,
  ConfigFolder = "key-pg"
})

local KeyData = {}
local KeyType = "string"

KeyData["Trial"] = true

-- [ Funções de Verificação ] --
function CheckGame()
local gameId = game.PlaceID
if gameId == 71315343 then
dragonballrage()
else
  return
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

function DisplayInvalidKeyNotification()
RaiLib:MakeNotification({
  Name = "Key Inválida",
  Content = "Sua Key está inválida.",
  Image = "rbxassetid://13132648697",
  Time = 10
})
end

-- [ Configuração da Janela de Key System ] --
local KeySystemTab = MainWindow:MakeTab({
  Name = "Key System",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

KeySystemTab:AddTextbox({
  Name = "Enter Key",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
  KeyType = Value
  end
})

KeySystemTab:AddButton({
  Name = "Login",
  Callback = function()
  if KeyData[KeyType] then
  CheckKey()
  else
    DisplayInvalidKeyNotification()
  end
  end
})

-- [ Função dos games ] --
function dragonballrage()
local dbrWindow = RaiLib:MakeWindow({
  Name = "Privileged  | Dragon Ball Rage",
  HidePremium = false,
  IntroText = "Privileged | Carregando...",
  SaveConfig = true,
  ConfigFolder = "dbr-pg"
})
end

RaiLib:Init()