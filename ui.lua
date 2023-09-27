local RAI = {}

RAI.Config = {
    DefaultWindowColor = Color3.new(0.2, 0.2, 0.2),
    DefaultTabColor = Color3.new(0.25, 0.25, 0.25),
    DefaultToggleOffColor = Color3.new(0.8, 0.2, 0.2),
    DefaultToggleOnColor = Color3.new(0.2, 0.8, 0.2),
    DefaultToggleSwitchColor = Color3.new(1, 1, 1),
    CloseButtonSize = UDim2.new(0.02, 0, 0.02, 0),
    CloseButtonPosition = UDim2.new(0, 20, 0, 20)
}
function RAI:CreateTab(parent, name)
    local tab = Instance.new("Frame", parent)
    tab.Size = UDim2.new(0.1, 0, 0.1, 0)
    tab.BackgroundColor3 = RAI.Config.DefaultTabColor
    tab.Name = name or "Tab"
    tab.ElementCount = 0

    return tab
end

function RAI:CreateToggle(parent, properties)
    local toggle = Instance.new("TextButton", parent)
    toggle.Size = UDim2.new(0.1, 0, 0.05, 0)
    toggle.Text = properties.name or "Toggle"

    toggle.Position = UDim2.new(0, 5, parent.ElementCount * 0.06, 5)
    parent.ElementCount = parent.ElementCount + 1
    return toggle
end

function RAI:CreateNotification(message)
    local notif = Instance.new("TextLabel", game.CoreGui)
    notif.Size = UDim2.new(0.2, 0, 0.1, 0)
    notif.Position = UDim2.new(0.8, 0, 0.9, 0)
    notif.Text = message
    notif.BackgroundColor3 = Color3.new(0, 0, 0)
    wait(5)
    notif:Destroy()
end

function RAI:CreateWindow(properties)
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local win = Instance.new("Frame", playerGui)
    win.Size = UDim2.new(0.4, 0, 0.4, 0)
    win.Position = UDim2.new(0.3, 0, 0.3, 0)
    win.BackgroundColor3 = RAI.Config.DefaultWindowColor
    win.Name = properties.Name or "RAI Window"

    local title = Instance.new("TextLabel", win)
    title.Text = properties.Name or "RAI Window"
    title.Size = UDim2.new(1, 0, 0.1, 0)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
    title.TextColor3 = Color3.new(1, 1, 1)

    local isDragging = false
    local dragStart, startPos

    title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = true
            dragStart = input.Position
            startPos = win.Position

            local function update(input)
                local delta = input.Position - dragStart
                win.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    isDragging = false
                end
            end)

            game:GetService("RunService").RenderStepped:Connect(function()
                if isDragging then
                    update(input)
                end
            end)
        end
    end)

    return win
end

return RAI