ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('modeo:BuyChargeur')
AddEventHandler('modeo:BuyChargeur', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Chargeur~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('modeo:BuyLampe')
AddEventHandler('modeo:BuyLampe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('flashlight', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ une ~r~Lampe~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuySkinDeLuxe')
AddEventHandler('modeo:BuySkinDeLuxe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('yusuf', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Skin de Luxe~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuySilencieux')
AddEventHandler('modeo:BuySilencieux', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('silencieux', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Silencieux~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('modeo:BuyPoignee')
AddEventHandler('modeo:BuyPoignee', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('grip', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ une ~r~Poignée~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)