Citizen.CreateThread(function()
    while true do
    Wait(100)
    local playerlist = GetActivePlayers()
        for i = 1, #playerlist do
        if playerlist[i] ~= PlayerId() then
            TriggerServerEvent('esx_ambulancejob:syncDaadBady', PedToNet(GetPlayerPed(-1)),GetPlayerServerId(playerlist[i]))
        end
        Wait(50)
        end
    end
end)