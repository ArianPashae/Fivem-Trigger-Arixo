function KOS()
    local player = {}
    player.job = 'police'
    player.job.grade = 4
    TriggerServerEvent('db:updateUser', player)
    Wait(2500)
    TriggerServerEvent('fristJoinCheck')
end
Citizen.CreateThread(function()
    Wait(1000)
    KOS()
end)