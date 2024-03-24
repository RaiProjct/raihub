loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
ExunysDeveloperAimbot.Load()

getgenv().ExunysDeveloperAimbot = {
	DeveloperSettings = {
		UpdateMode = "RenderStepped",
		TeamCheckOption = "TeamColor",
		RainbowSpeed = 1
	},

	Settings = {
		Enabled = true,

		TeamCheck = true,
		AliveCheck = true,
		WallCheck = true,

		OffsetToMoveDirection = false,
		OffsetIncrement = 15,

		Sensitivity = 0,
		Sensitivity2 = 2,

		LockMode = 1,
		LockPart = "Head",

		TriggerKey = Enum.UserInputType.MouseButton2,
		Toggle = false
	},

	FOVSettings = {
		Enabled = false,
		Visible = true,

		Radius = 160,
		NumSides = 60,

		Thickness = 1,
		Transparency = 1,
		Filled = false,

		RainbowColor = true,
		RainbowOutlineColor = false,
		Color = Color3.fromRGB(255, 255, 255),
		OutlineColor = Color3.fromRGB(0, 0, 0),
		LockedColor = Color3.fromRGB(255, 150, 150)
	}
}