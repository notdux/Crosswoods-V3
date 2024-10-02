local Players = game:GetService("Players")
local ChatService = game:GetService("Chat")

local swearWords = {"Niggers", "Faggot", "Gay Nigga Kys"}

Players.PlayerChatted:Connect(function(player, message)
    for _, swearWord in ipairs(swearWords) do
        if string.find(message, swearWord) then
            ChatService:ReportAbuse(player, "Swearing", "Swearing in game chat")
            break
        end
    end
end)
