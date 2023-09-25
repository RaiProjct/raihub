local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local cframes = {
    CFrame.new(-5369.15869, 312.698517, -3034.57349, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396),
    CFrame.new(-5075.64355, 370.065948, -3174.44238, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106),
    CFrame.new(-4919.99268, 370.065979, -2845.20337, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396),
    CFrame.new(-4953.46191, 313.268555, -3173.19336, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.927179813),
    CFrame.new(-4919.99268, 370.065979, -2845.20337, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396),
    CFrame.new(-5335.69971, 312.468536, -2840.2959, 0.374604106, -0, -0.92718488, 0, 1, -0, 0.92718488, 0, 0.374604106),
    CFrame.new(-5600.31006, 312.468536, -2719.47363, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106),
    CFrame.new(-5719.32861, 312.698517, -2892.8313, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
}

local function tweenToLocations()
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    for _, cframe in ipairs(cframes) do
        local goal = {}
        goal.CFrame = cframe

        print("Movendo para a próxima localização...")
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()

        wait(1)
    end

    wait(1)
    local targetPlaceId = 2753915549
    TeleportService:Teleport(targetPlaceId)
end

tweenToLocations()
