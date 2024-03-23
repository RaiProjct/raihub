local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLib")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

local espLib = {
    drawings = {},
    instances = {},
    espCache = {},
    chamsCache = {},
    objectCache = {},
    conns = {},
    whitelist = {},
    blacklist = {},
    options = {
        enabled = true,
        minScaleFactorX = 1,
        maxScaleFactorX = 10,
        minScaleFactorY = 1,
        maxScaleFactorY = 10,
        boundingBox = false,
        boundingBoxDescending = true,
        font = 2,
        fontSize = 13,
        limitDistance = false,
        maxDistance = 1000,
        visibleOnly = false,
        teamCheck = false,
        teamColor = false,
        fillColor = nil,
        whitelistColor = Color3.new(1, 0, 0),
        outOfViewArrows = true,
        outOfViewArrowsFilled = true,
        outOfViewArrowsSize = 25,
        outOfViewArrowsRadius = 100,
        outOfViewArrowsColor = Color3.new(1, 1, 1),
        outOfViewArrowsTransparency = 0.5,
        outOfViewArrowsOutline = true,
        outOfViewArrowsOutlineFilled = false,
        outOfViewArrowsOutlineColor = Color3.new(1, 1, 1),
        outOfViewArrowsOutlineTransparency = 1,
        names = true,
        nameTransparency = 1,
        nameColor = Color3.new(1, 1, 1),
        boxes = true,
        boxesTransparency = 1,
        boxesColor = Color3.new(1, 0, 0),
        boxFill = false,
        boxFillTransparency = 0.5,
        boxFillColor = Color3.new(1, 0, 0),
        healthBars = true,
        healthBarsSize = 1,
        healthBarsTransparency = 1,
        healthBarsColor = Color3.new(0, 1, 0),
        healthText = true,
        healthTextTransparency = 1,
        healthTextSuffix = "%",
        healthTextColor = Color3.new(1, 1, 1),
        distance = true,
        distanceTransparency = 1,
        distanceSuffix = " Studs",
        distanceColor = Color3.new(1, 1, 1),
        tracers = false,
        tracerTransparency = 1,
        tracerColor = Color3.new(1, 1, 1),
        tracerOrigin = "Bottom",
        chams = true,
        chamsFillColor = Color3.new(1, 0, 0),
        chamsFillTransparency = 0.5,
        chamsOutlineColor = Color3.new(),
        chamsOutlineTransparency = 0
    },
};

_G.autotrain = false

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
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}
local MainEspTab = MainWindow:MakeTab{
    Name = "Esp",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
}

MainFarmTab:AddToggle{
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

local function espcheck()
  if _G.espcheck == true then
    espLib:Load()
  else
    espLib:Unload()
  end
end
RaiLib:Init()