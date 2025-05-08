-- Made for Roblox Mobile - Gesus Hack GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "GesusHack"

Frame.Size = UDim2.new(0, 200, 0, 440) -- Extended to fit all buttons
Frame.Position = UDim2.new(0, 20, 0.3, 0)
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.BackgroundTransparency = 0.2
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

-- Title Label
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "GESUS HACK"
Title.TextColor3 = Color3.new(1, 0, 0)
Title.Font = Enum.Font.Code
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.Parent = Frame

-- Button creation function
local function createButton(name, positionY, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, positionY)
    btn.Text = name
    btn.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.Code
    btn.TextScaled = true
    btn.Parent = Frame
    btn.MouseButton1Click:Connect(callback)
end

-- Buttons
createButton("ESP", 40, function()
    print("ESP activated") -- Replace with your ESP logic
end)

createButton("Speed", 80, function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

createButton("Fly Menu", 120, function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-Fly-V3-16477"))()
end)

createButton("Noclip", 160, function()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local noclip = true
    game:GetService("RunService").Stepped:Connect(function()
        if noclip and char and char:FindFirstChild("Humanoid") then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end
    end)
end)

createButton("Teleport Forward", 200, function()
    local char = game.Players.LocalPlayer.Character
    if char and char:FindFirstChild("HumanoidRootPart") then
        char:MoveTo(char.HumanoidRootPart.Position + char.HumanoidRootPart.CFrame.LookVector * 10)
    end
end)

createButton("Infinite Yield", 240, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

createButton("FE Bypass", 280, function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-FE-Bypass-Gui-12350"))()
end)

createButton("Script Dex", 320, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

createButton("ESP BloodDebt", 360, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/qwezxc123zz/FreeCheats/main/ESPBloodDebt.lua"))()
end)

createButton("SystemBroken", 400, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
end)
