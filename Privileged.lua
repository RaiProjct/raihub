getgenv().SecureMode = true
local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibrary")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()

_G.fovaimb = 0
_G.maxDistanceaimb = 0
_G.aimtoggle = false
_G.esptoggle = false
espLib.options.healthText = false
espLib.options.healthText = false
espLib.options.healthText = false
espLib.options.healthText = false

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

local Tab1 = Window:CreateTab("Games", 4483362458)
local Tab2 = Window:CreateTab("Cheats", 448336245)

local function aimbot()
    if _G.aimtoggle == false then
      _G.fovaimb = 0
      _G.maxDistanceaimb = 0
    else
      _G.fovaimb = 60
      _G.maxDistanceaimb = 400
    end
end
local function esp()
    if _G.esptoggle == false then
      espLib:Unload()
    else
      espLib:Load()
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