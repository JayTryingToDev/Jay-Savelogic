local firstspawn = true

AddEventHandler('playerSpawned', function ()
    if firstspawn then
        TriggerServerEvent('jay-savelogic:server:load')
        firstspawn = false
    end
end)

local spawned = false
RegisterNetEvent('jay-savelogic:client:load')
AddEventHandler('jay-savelogic:client:load', function (health, armour)

    if spawned then
        print ('Already spawned')
        return
    end

    local ped = PlayerPedId()
    SetEntityHealth(ped, health)
    SetPedArmour(ped, armour)
    spawned = true
end)
