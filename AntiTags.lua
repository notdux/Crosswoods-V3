local Players = game:GetService("Players")
local ChatService = game:GetService("Chat")

local swearWords = {"Niggers", "Faggot", "Gay Nigga Kys"}

local function replaceSwearWords(message)
    for _, swearWord in ipairs(swearWords) do
        message = message:gsub(swearWord, string.rep("#", #swearWord))
    end

    return message
end

Players.PlayerChatted:Connect(function(player, originalMessage)
    local speaker = ChatService:FindSpeakerForUserId(player.UserId)
    local chatMessage = speaker:GetExtraData("ChatData"):GetData().Message
    local replacedMessage = replaceSwearWords(chatMessage)

    speaker:SetExtraData("ChatData", ChatMessage.new(replacedMessage))
end)
