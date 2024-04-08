

RegisterNetEvent('flat_Prediction:open')
AddEventHandler('flat_Prediction:open', function()
    local ped = PlayerPedId()    
    if not DoesAnimDictExist('script_mp@emoteslets_craft') then
        return
    end
    RequestAnimDict('script_mp@emoteslets_craft')
    while not HasAnimDictLoaded('script_mp@emoteslets_craft') do
        Wait(0)
    end
    Citizen.Wait(200)
    TaskPlayAnim(ped, 'script_mp@emoteslets_craft', 'action_alt1_firstpersonpreview', 1.0, 1.0, 12000, 24, 0, false, false, false, '', false)
    Citizen.Wait(1500)
    ClearPedSecondaryTask(ped)
    
end)

RegisterNetEvent('flat_Prediction:eat')
AddEventHandler('flat_Prediction:eat', function()
    local ped = PlayerPedId()    
    if not DoesAnimDictExist('mech_pickup@plant@berries') then
        return
    end
    RequestAnimDict('mech_pickup@plant@berries')
    while not HasAnimDictLoaded('mech_pickup@plant@berries') do
        Wait(0)
    end
    Citizen.Wait(200)
    TaskPlayAnim(ped, 'mech_pickup@plant@berries', 'exit_eat', 1.0, 1.0, 12000, 24, 0, false, false, false, '', false)
    Citizen.Wait(1500)
    ClearPedSecondaryTask(ped)

end)

