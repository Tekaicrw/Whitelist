local Players = game:GetService("Players")
local player = Players.LocalPlayer

local AllowedIDs = {
    9457195449
    10699983081

local function isAllowed(userId)
    for _, id in ipairs(AllowedIDs) do
        if id == userId then
            return true
        end
    end
    return false
end

if not isAllowed(player.UserId) then
    player:Kick("Sem permissão.")
    return
end
