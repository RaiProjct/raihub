getgenv().SecureMode = true
local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibrary")))()
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Privileged Hub",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "key-pg",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

_G.protocolprocesskeyrailibcheckscriptkey = false

-- [ Funções de Verificação ] --
function process()
    RaiLib:MakeNotification{
        Name = "Sucesso!",
        Content = "Você injetou o script.",
        Image = "rbxassetid://16845695850",
        Time = 10
    }
    _G.protocolprocesskeyrailibcheckscriptkey = true
    RaiLib:Destroy()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/games/seletor.lua")))()
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

RaiLib:Init()
