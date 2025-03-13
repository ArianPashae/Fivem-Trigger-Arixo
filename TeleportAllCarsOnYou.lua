Citizen.CreateThread(function()
    local players = GetGamePool('CVehicle')
    local a = GetPlayerPed(GetPlayerFromServerId(PlayerPedId()))
    local coord = GetEntityCoords(a)
    for _, player in ipairs(players) do 
        NetworkRequestControlOfEntity(player)
        SetEntityCoords(player, coord.x , coord.y , coord.z + 2.0)
    end
end)
