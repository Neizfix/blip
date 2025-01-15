Citizen.CreateThread(function()
    for _, blipInfo in pairs(Config.Blips) do
        local blip = AddBlipForCoord(blipInfo.location.x, blipInfo.location.y, blipInfo.location.z)
        SetBlipSprite(blip, blipInfo.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipInfo.scale)
        SetBlipColour(blip, blipInfo.color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipInfo.name)
        EndTextCommandSetBlipName(blip)
    end
end)
