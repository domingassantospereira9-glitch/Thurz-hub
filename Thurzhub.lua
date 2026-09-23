
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "ThurzHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Janela principal
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 310, 0, 360)
main.Position = UDim2.new(0.5, -155, 0.5, -180)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

-- Contorno vermelho
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(220, 25, 45)
stroke.Thickness = 2
stroke.Parent = main

-- Cabeçalho
local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, 0, 0, 55)
header.BackgroundColor3 = Color3.fromRGB(190, 20, 40)
header.BorderSizePixel = 0
header.Text = "☠ THURZ HUB"
header.TextColor3 = Color3.new(1, 1, 1)
header.TextSize = 24
header.Font = Enum.Font.GothamBold
header.Parent = main

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0, 12)
headerCorner.Parent = header

-- Subtítulo
local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, -20, 0, 30)
subtitle.Position = UDim2.new(0, 10, 0, 65)
subtitle.BackgroundTransparency = 1
subtitle.Text = "🏴‍☠️ ONE PIECE EDITION"
subtitle.TextColor3 = Color3.fromRGB(255, 65, 75)
subtitle.TextSize = 15
subtitle.Font = Enum.Font.GothamBold
subtitle.Parent = main

-- Criador de botões
local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -30, 0, 45)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
    button.BorderSizePixel = 0
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 16
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 8)
    buttonCorner.Parent = button

    local buttonStroke = Instance.new("UIStroke")
    buttonStroke.Color = Color3.fromRGB(210, 25, 45)
    buttonStroke.Thickness = 1
    buttonStroke.Parent = button

    button.Activated:Connect(callback)

    return button
end

-- Avisos
local function notify(text)
    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(1, -30, 0, 35)
    message.Position = UDim2.new(0, 15, 1, -45)
    message.BackgroundTransparency = 1
    message.Text = text
    message.TextColor3 = Color3.fromRGB(255, 80, 90)
    message.TextSize = 14
    message.Font = Enum.Font.GothamBold
    message.Parent = main
end

-- Botão Instant Steal (demonstração)
createButton("🥚 Instant Steal", UDim2.new(0, 15, 0, 110), function()
    notify("Instant Steal: modo de demonstração!")
end)

-- Botão Teleguiado (demonstração)
createButton("🧭 Teleguiado", UDim2.new(0, 15, 0, 170), function()
    notify("Teleguiado: modo de demonstração!")
end)

-- Botão sobre
createButton("🏴‍☠️ Sobre o Hub", UDim2.new(0, 15, 0, 230), function()
    notify("THURZ HUB | One Piece Edition")
end)

-- Botão fechar
createButton("❌ Fechar Hub", UDim2.new(0, 15, 0, 290), function()
    gui:Destroy()
end)

print("THURZ HUB carregado!")
