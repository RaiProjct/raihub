local RaiLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib')))()
local MainWindow = RaiLib:MakeWindow{
    Name = "Privileged  |  Key System",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "key-pg"
}

local KeyData = {}
local KeyType = "string"
KeyData["Trial"] = true

-- [ Funções de Verificação ] --
local function CheckGame()
    local gameId = game.PlaceID
    if gameId == 71315343 then
        dragonbloxultimate()
    else
        return
    end
end

local function CheckKey()
    RaiLib:Destroy()
    RaiLib:MakeNotification{
        Name = "Sucesso!",
        Content = "Você injetou o script.",
        Image = "rbxassetid://13132648697",
        Time = 10
    }
    wait(3)
    CheckGame()
end

local function DisplayInvalidKeyNotification()
    RaiLib:MakeNotification{
        Name = "Key Inválida",
        Content = "Sua Key está inválida.",
        Image = "rbxassetid://13132648697",
        Time = 10
    }
end

-- [ Configuração da Janela de Key System ] --
local KeySystemTab = MainWindow:MakeTab{
    Name = "Key System",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}

KeySystemTab:AddTextbox{
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyType = Value
    end
}

KeySystemTab:AddButton{
    Name = "Login",
    Callback = function()
        if KeyData[KeyType] then
            CheckKey()
        else
            DisplayInvalidKeyNotification()
        end
    end
}

-- [ Função dos games ] --
local function dragonbloxultimate()
    local dbuWindow = RaiLib:MakeWindow{
        Name = "Privileged  | Dragon Blox Ultimate",
        HidePremium = false,
        IntroText = "Privileged | Carregando...",
        SaveConfig = true,
        ConfigFolder = "dbu-pg"
    }

    local dbuFarmTab = dbuWindow:MakeTab{
        Name = "Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }

    dbuFarmTab:AddToggle{
        Name = "Auto Train",
        Default = false,
        Callback = function(Value)
            _G.autotrain = Value
            autotrain()
        end
    }

    local function autotrain()
        while _G.autotrain == true do
            wait(.0001)
            local args = {
                  [1] = "Blacknwhite27"
              }
            game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
            local args = {
                  [1] = "Blacknwhite27",
                  [2] = 1
              }
            game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
            local args = {
                  [1] = 1,
                  [2] = false,
                  [3] = CFrame.new(-477.7599182128906, 219.12937927246094, -3772.001953125) * CFrame.Angles(-3.141592502593994, -0.8255488276481628, -3.141592502593994)
              }
            game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
            local args = {
                  [1] = "Blacknwhite27"
              }
            game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
        end
    end

    local dbuEspTab = dbuWindow:MakeTab{
        Name = "Esp",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
end

RaiLib:Init()