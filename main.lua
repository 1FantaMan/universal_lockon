--// Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

--// Variables
local Configs = {
    IsActive = true,
    VelocityPrediction = false,
}

local Target = {
    Position = Vector3.new(),
    RootPart = nil :: BasePart
}

--// Functions
local function InputBegan(input: InputObject, gameProcessedEvent: boolean)
    
end

--// Signals
UserInputService.InputBegan:Connect(InputBegan)

print("Universal Lock_on Loaded Successfully!")