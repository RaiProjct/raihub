getgenv().SecureMode = true
local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibrary")))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibAimbot")))()

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

local function esp()
    if _G.esptoggle == true then
      espLib:Load()
    else
      espLib:Unload()
    end
end

local Label1 = Tab2:CreateLabel("Aimbot Config")

local Toggle1 = Tab2:CreateToggle({
   Name = "Aimbot",
   CurrentValue = false,
   Flag = "pg-aimbot",
   Callback = function(Value)
      _G.aimtoggled = Value
   end,
})

local Toggle2 = Tab2:CreateToggle({
   Name = "Team Check",
   CurrentValue = false,
   Flag = "pg-ab_teamcheck",
   Callback = function(Value)
      _G.teamCheck = Value
   end,
})

local Toggle3 = Tab2:CreateToggle({
   Name = "Show Fov",
   CurrentValue = false,
   Flag = "pg-ab_showfov",
   Callback = function(Value)
      _G.showFov = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "pg-ab_fov",
   Callback = function(Value)
      
   end,
})

local Toggle4 = Tab2:CreateToggle({
   Name = "Esp",
   CurrentValue = false,
   Flag = "pg-esp",
   Callback = function(Value)
      _G.esptoggle = Value
      esp()
   end,
})