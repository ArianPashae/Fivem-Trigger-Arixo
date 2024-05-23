Citizen.CreateThread(function()
    while true do
        Citizen.Wait(150)
        TriggerServerEvent('printUsers')
    end
end)