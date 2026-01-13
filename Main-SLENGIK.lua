--// SLENGIK HUB \\--
-- Discord: https://discord.gg/5ZwtRajA

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")

-- Notificação
game.StarterGui:SetCore("SendNotification", {
    Title = "SLENGIK",
    Text = "Painel carregado com sucesso!",
    Duration = 5
})

-- GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SLENGIK_HUB"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = gui

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 420, 0, 260)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -130)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0

local Corner = Instance.new("UICorner", MainFrame)
Corner.CornerRadius = UDim.new(0, 16)

local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Thickness = 2
Stroke.Color = Color3.fromRGB(170, 0, 255)

-- Título
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "SLENGIK HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 26
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Botão exemplo
local Button = Instance.new("TextButton", MainFrame)
Button.Size = UDim2.new(0, 200, 0, 40)
Button.Position = UDim2.new(0.5, -100, 0.5, -20)
Button.Text = "EXEMPLO SCRIPT"
Button.Font = Enum.Font.GothamBold
Button.TextSize = 16
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.BackgroundColor3 = Color3.fromRGB(40,40,40)

Instance.new("UICorner", Button).CornerRadius = UDim.new(0,12)

Button.MouseButton1Click:Connect(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "SLENGIK",
        Text = "Você clicou no botão 😎",
        Duration = 3
    })
end)
