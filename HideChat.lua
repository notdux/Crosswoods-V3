local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = script.Parent

local chatOutput = Instance.new("TextLabel")
chatOutput.Size = UDim2.new(0, 300, 0, 200)
chatOutput.BackgroundTransparency = 0.5
chatOutput.BackgroundColor3 = Color3.new(0, 0, 0)
chatOutput.TextColor3 = Color3.new(1, 1, 1)
chatOutput.TextXAlignment = Enum.TextXAlignment.Left
chatOutput.TextYAlignment = Enum.TextYAlignment.Top
chatOutput.Text = ""
chatOutput.Parent = screenGui

local function onSendChatMessage(playerName, message)
    chatOutput.Text = chatOutput.Text .. "\n[" .. playerName .. "]: " .. message
end

ReplicatedStorage:WaitForChild("SendChatMessage").OnClientEvent:Connect(onSendChatMessage)
