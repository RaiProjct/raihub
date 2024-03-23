local RaiLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib'))()
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/sense/source.lua'))()

Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = true
Sense.teamSettings.enemy.boxColor[1] = Color3.new(0, 0.25, 0.75)


_G.autotrain = false

function checkprotocol()
  if _G.protocolprocesskeyrailibcheckscriptkey == false then
    RaiLib:Destroy()
    game.Players.LocalPlayer:Kick("Você precisa passar pelo sistema de Key primeiro")
end
end

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
        autotrain1()
        autotrain2()
        autotrain3()
        autotrain4()
    end
}

local function autotrain1()
    while _G.autotrain do
        wait(0.0001)
        local args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
    end
end
local function autotrain2()
    while _G.autotrain do
        wait(0.0001)
        args = {1, false, CFrame.new(-477.7599182128906, 219.12937927246094, -3772.001953125) * CFrame.Angles(-3.141592502593994, -0.8255488276481628, -3.141592502593994)}
        game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
    end
end
local function autotrain3()
    while _G.autotrain do
        wait(0.0001)
        args = {"Blacknwhite27"}
        game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
    end
end
local function autotrain4()
    while _G.autotrain do
        wait(0.0001)
        args = {"Blacknwhite27", 1}
        game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
    end
end

local dbuEspTab = dbuWindow:MakeTab{
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}

checkprotocol()
RaiLib:Init()