local firstspawn = true

AddEventHandler('playerSpawned', function ()
    if firstspawn then
        TriggerServerEvent('scrp-savelogic:server:load')
        firstspawn = false
    end
end)

local spawned = false
RegisterNetEvent('scrp-savelogic:client:load')
AddEventHandler('scrp-savelogic:client:load', function (health, armour)

    if spawned then
        print ('Already spawned')
        return
    end

    local ped = GetPlayerPed(-1)
    SetEntityHealth(ped, health)
    SetPedArmour(ped, armour)
    spawned = true
end)
