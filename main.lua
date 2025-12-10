--// Services
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

--// Variables
local Target = {
    Position = Vector3.new(),
    RootPart = nil :: BasePart
}

local IsActive = true

--// Functions
local function InputBegan(input: InputObject, gameProcessedEvent: boolean)
    
end

--// Signals
UserInputService.InputBegan:Connect(InputBegan)