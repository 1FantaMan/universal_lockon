--// Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

--// Player
local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

--// Variables
local Configs = {
    IsActive = true,
    VelocityPrediction = false,
    ShowLockonVisual = true
}

local Assets = {
    Lockon_Visual = nil
}

local Target = {
    Position = Vector3.new(),
    RootPart = nil :: BasePart
}

--// Functions
local function init()
    --[ Creating the Lock on Visual ]
    Assets.Lockon_Visual = Instance.new("BillboardGui")
end

local function InputBegan(input: InputObject, gameProcessedEvent: boolean)
    if gameProcessedEvent then return end

    
end

local function TouchTap(positions: Array<Vector2>, gameProcessedEvent: boolean)
    
end

local function CharacterAdded(_char: Model)
    char = _char
    hum = _char:WaitForChild("Humanoid")
    init()
end

local function Runtime(deltaTime: number)
    if not Configs.IsActive then return end


end

--// Signals
RunService.RenderStepped:Connect()
UserInputService.InputBegan:Connect(InputBegan)
UserInputService.TouchTap:Connect(TouchTap)
plr.CharacterAdded:Connect(CharacterAdded)

print("Universal Lock_on Loaded Successfully!")