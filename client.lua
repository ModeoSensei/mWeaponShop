ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('example', 'main', RageUI.CreateMenu("Ammunation", "Ammunation"))
RMenu.Add('example', 'accessoire', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Accessoires", "Accessoires d'armes"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('example', 'main'), true, true, true, function()

            RageUI.Button("Accessoires d'armes", "Procures-toi des accessoires pour ton arme", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('example', 'accessoire'))
        end, function()
        end)

-------------------------------------------------------------------------------
-------------------------Accessoires-------------------------------------------
-------------------------------------------------------------------------------

               RageUI.IsVisible(RMenu:Get('example', 'accessoire'), true, true, true, function()

            RageUI.Button("Lampe", "Pour aveugler ta cible !", {RightLabel = "100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuyLampe')
                end
            end)

            RageUI.Button("Chargeur", "L'objet indispensable pour te servir de tes armes !", {RightLabel = "100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuyChargeur')
                end
            end)

             RageUI.Button("Skin de Luxe", "Pour embellir tes armes !", {RightLabel = "100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuySkinDeLuxe')
                      end
                end)

               RageUI.Button("Silencieux", "Passer à l'acte dans le silence !", {RightLabel = "100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuySilencieux')
                      end
                end)

            RageUI.Button("Poignée", "Permet d'avoir une meilleure prise en main !", {RightLabel = "100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('modeo:BuyPoignee')
                end
            end)
        
          end, function()
         ---Panels
           end, 1)

        Citizen.Wait(0) 
    end
end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        { x = -662.1, y = -935.3, z = 21.8 },
        { x = 810.2, y = -2157.3, z = 29.6 },
        { x = 1693.4, y = 3759.5, z = 34.7 },
        { x = -330.2, y = 6083.8, z = 31.4 },
        { x = 252.3, y = -50.0, z = 69.9 },
        { x = 22.0, y = -1107.2, z = 29.8 },
        { x = 2567.6, y = 294.3, z = 108.7 },
        { x = -1117.5, y = 2698.6, z = 18.5 },
        { x = 842.4, y = -1033.4, z = 28.1 },
        { x = -1306.2, y = -394.0, z = 36.6 }
    }   
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour accéder à ~b~l'armurerie",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('example', 'main'), not RageUI.Visible(RMenu:Get('example', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 22.45, -1105.41, 28.8, 153.96, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 254.09, -50.25, 68.94, 69.63, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", -1303.96, -394.37, 35.69, 75.61, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", -662.52, -933.41, 20.82, 179.28, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 810.52, -2159.22, 28.61, 359.36, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 842.73, -1035.50, 27.19, 359.24, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 1691.88, 3760.88, 33.70, 224.45, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", -331.80, 6084.97, 30.45, 226.11, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", -1119.13, 2699.72, 17.55, 221.05, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 2568.06, 292.44, 107.73, 1.88, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)


Citizen.CreateThread(function()
    for k, v in pairs(position) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)

        SetBlipSprite (blip, 110)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.7)
		SetBlipColour (blip, 0)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Armurerie")
        EndTextCommandSetBlipName(blip)
    end
end)