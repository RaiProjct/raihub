local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
local MainWindow = RaiLib:MakeWindow{
    Name = "Privileged  |  Key System",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "key-pg"
}

_G.protocolprocesskeyrailibcheckscriptkey = false
_G.KeyData = "trial"
_G.KeyType = "string"

-- [ Funções de Verificação ] --
function process()
    _G.gameidprishsjsjsks = game.PlaceId
    print(gameidprishsjsjsks)
    RaiLib:MakeNotification{
        Name = "Sucesso!",
        Content = "Você injetou o script.",
        Image = "rbxassetid://16845695850",
        Time = 10
    }
    _G.protocolprocesskeyrailibcheckscriptkey = true
    RaiLib:Destroy()
    nextpage()
end

local function DisplayInvalidKeyNotification()
    RaiLib:MakeNotification{
        Name = "Key Inválida",
        Content = "Sua Key está inválida.",
        Image = "rbxassetid://16845695850",
        Time = 10
    }
end

local KeySystemTab = MainWindow:MakeTab{
    Name = "Key System",
    Icon = "rbxassetid://16845695850",
    PremiumOnly = false
}

KeySystemTab:AddTextbox{
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyType = Value
    end
}

KeySystemTab:AddButton{
    Name = "Login",
    Callback = function()
        if _G.KeyType == _G.KeyData then
            process()
        else
            DisplayInvalidKeyNotification()
            _G.protocolprocesskeyrailibcheckscriptkey = false
        end
    end
}

function nextpage()

local Main2Window = RaiLib:MakeWindow{
    Name = "Privileged  |  Select Game",
    HidePremium = false,
    IntroText = "Privileged | Carregando...",
    SaveConfig = true,
    ConfigFolder = "sg-pg"
}

local GameTab = Main2Window:MakeTab{
    Name = "Games",
    Icon = "rbxassetid://16845953528",
    PremiumOnly = false
}

GameTab:AddButton{
    Name = "Dragon Blox Ultimate",
    Callback = function()
      RaiLib:Destroy()
    end
}
end

RaiLib:Init()
