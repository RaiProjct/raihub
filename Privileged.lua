getgenv().SecureMode = true
local RaiLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RaiProjct/raihub/main/RaiLibrary")))()
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

