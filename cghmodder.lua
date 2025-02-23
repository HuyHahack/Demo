local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")

-- UI chính
local ScreenGui = Instance.new("ScreenGui", PlayerGui)
ScreenGui.ResetOnSpawn = false

-- Ảnh mở menu (có thể di chuyển)
local OpenButton = Instance.new("ImageButton", ScreenGui)
OpenButton.Size = UDim2.new(0.15, 0, 0.15, 0)
OpenButton.Position = UDim2.new(0.85, 0, 0.05, 0)
OpenButton.Image = "rbxasset://textures/ui/137993682921900" -- Chỗ này thay bằng ID ảnh của mày
OpenButton.BackgroundTransparency = 1
OpenButton.Draggable = true

-- Hiệu ứng loading
local LoadingFrame = Instance.new("Frame", ScreenGui)
LoadingFrame.Size = UDim2.new(0.4, 0, 0.2, 0)
LoadingFrame.Position = UDim2.new(0.3, 0, 0.4, 0)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadingFrame.Visible = false

local LoadingText = Instance.new("TextLabel", LoadingFrame)
LoadingText.Size = UDim2.new(1, 0, 1, 0)
LoadingText.Text = "Đang tải..."
LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingText.TextScaled = true
LoadingText.BackgroundTransparency = 1

local ProgressBar = Instance.new("Frame", LoadingFrame)
ProgressBar.Size = UDim2.new(0, 0, 0.2, 0)
ProgressBar.Position = UDim2.new(0, 0, 0.8, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

-- Chữ CGH MODDER MÃI ĐỈNH
local ModderText = Instance.new("TextLabel", ScreenGui)
ModderText.Size = UDim2.new(1, 0, 0.2, 0)
ModderText.Position = UDim2.new(0, 0, 0.3, 0)
ModderText.Text = "CGH MODDER MÃI ĐỈNH"
ModderText.TextColor3 = Color3.fromRGB(255, 215, 0)
ModderText.TextScaled = true
ModderText.BackgroundTransparency = 1
ModderText.Visible = false

-- Menu chính (có thể kéo)
local MenuFrame = Instance.new("Frame", ScreenGui)
MenuFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
MenuFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MenuFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MenuFrame.Visible = false
MenuFrame.Draggable = true

-- Tabs
local Tabs = {"Farm", "ESP", "Misc", "Settings"}
for i, name in ipairs(Tabs) do
    local TabButton = Instance.new("TextButton", MenuFrame)
    TabButton.Size = UDim2.new(0.25, 0, 0.1, 0)
    TabButton.Position = UDim2.new((i - 1) * 0.25, 0, 0, 0)
    Tab