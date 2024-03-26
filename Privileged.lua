getgenv().SecureMode = true
local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibrary")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

_G.protocolkeysystempg = false
espLib.options.teamCheck = true
espLib.options.teamColor = true
espLib.options.boxes = false
espLib.options.chams = true

local Window = RaiLib:CreateWindow({
   Name = "Privileged",
   LoadingTitle = "Injetando...",
   LoadingSubtitle = "by Swe7z",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Privileged-PG"
   },
   Discord = {
      Enabled = true,
      Invite = "tn3x7hEvn3",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "Privileged",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "key-pg",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"trial"}
   }
})

local Tab1 = Window:CreateTab("Games", 16848188334)
local Tab2 = Window:CreateTab("Cheats", 16848226216)

local function aimbot()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()
    if _G.aimtoggle == true then
      _G.fovaimb = 60
      _G.maxDistanceaimb = 800
    else
      _G.fov = 0
      _G.maxDistance = 0
    end
end
local function esp()
    if _G.esptoggle == true then
      espLib:Load()
    else
      espLib:Unload()
    end
end

local Toggle1 = Tab2:CreateToggle({
   Name = "Aimbot",
   CurrentValue = false,
   Flag = "pg-aimbot",
   Callback = function(Value)
      _G.aimtoggle = Value
      aimbot()
   end,
})

local Toggle2 = Tab2:CreateToggle({
   Name = "Esp",
   CurrentValue = false,
   Flag = "pg-esp",
   Callback = function(Value)
      _G.esptoggle = Value
      esp()
   end,
})