local RaiLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib'))()

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

local function autotrain1()
    while _G.autotrain do
        wait(0.0001)
        local args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
    end
end

local dbuEspTab = dbuWindow:MakeTab{
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}

RaiLib:Init()