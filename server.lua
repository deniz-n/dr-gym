ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('dr:onyoga')
AddEventHandler('dr:onyoga', function()
    local _source = source
    TriggerClientEvent('esx_status:remove', _source, 'stress', 350000)
end)

RegisterServerEvent('dr:onspor')
AddEventHandler('dr:onspor', function()
    local _source = source
    TriggerClientEvent('esx_status:remove', _source, 'thirst', 200000)
end)

RegisterServerEvent('dr:sual')
AddEventHandler('dr:sual', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local gtmny = xPlayer.getMoney(Config.sufiyat)
    if gtmny >= Config.sufiyat then
        xPlayer.removeMoney(Config.sufiyat)
        xPlayer.addInventoryItem('water', 1)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'error', text = 'Yeterli Paran Yok.', length = 5000 })
    end
end)