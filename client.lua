ESX = nil
local onspor = false

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
      end
end)



Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.KolCalis.x,Config.Coords.KolCalis.y, Config.Coords.KolCalis.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Kol Çalış"
			if dstCheck <= 0.65 then
				text = "Kol çalışmak için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            kolcalis()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.KolCalis, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.BarfiksCek.x, Config.Coords.BarfiksCek.y, Config.Coords.BarfiksCek.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Barfiks"
			if dstCheck <= 0.65 then
				text = "Barfiks çekmek için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            barfikscalis()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.BarfiksCek, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.YogaYap.x, Config.Coords.YogaYap.y, Config.Coords.YogaYap.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Yoga"
			if dstCheck <= 0.65 then
				text = "Yoga yapmak için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            yogayap()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.YogaYap, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.MekikCek.x, Config.Coords.MekikCek.y, Config.Coords.MekikCek.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Mekik"
			if dstCheck <= 0.65 then
				text = "Mekik çekmek için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            mekikcek()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.MekikCek, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.SinavCek.x, Config.Coords.SinavCek.y, Config.Coords.SinavCek.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Şınav"
			if dstCheck <= 0.65 then
				text = "Şınav çekmek için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            sinavcek()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.SinavCek, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)
	while true do
		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
		local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Coords.SuAl.x, Config.Coords.SuAl.y, Config.Coords.SuAl.z, true)
		if dstCheck <= 5.0 then
			sleepThread = 5
			local text = "Su Makinası"
			if dstCheck <= 0.65 then
				text = "Su almak için [~g~E~s~] Tuşuna bas."
				if IsControlJustPressed(0, 38) then
					if not onspor then
            		sual()
					end
				end
			end
			ESX.Game.Utils.DrawText3D(Config.Coords.SuAl, text, 0.6)
		end
		if dstCheck >= 7.0 then
			Citizen.Wait(5000)
		else 
			Citizen.Wait(5)
		end
	end
end)



function kolcalis()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.KolCalis.h)
  SetEntityCoords(playerPed, Config.Coords.KolCalis.x,Config.Coords.KolCalis.y,Config.Coords.KolCalis.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "kol_calis", duration = Config.kolcalismazamani * 1000, label = "Kol Kası Çalışıyorsun.."})
  Citizen.Wait(Config.kolcalismazamani * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('dr:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Susuzluğun arttı..', 5000)
  FreezeEntityPosition(playerPed, false)
  ClearPedTasksImmediately(playerPed)
end

function barfikscalis()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.BarfiksCek.h)
  SetEntityCoords(playerPed, Config.Coords.BarfiksCek.x,Config.Coords.BarfiksCek.y,Config.Coords.BarfiksCek.z-1.05)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "barfiks_cek", duration = Config.barfikscalismasuresi * 1000, label = "Barfiks Çekiyorsun.."})
  Citizen.Wait(Config.barfikscalismasuresi * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('dr:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Susuzluğun arttı..', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)
end

function yogayap()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.YogaYap.h)
  SetEntityCoords(playerPed, Config.Coords.YogaYap.x,Config.Coords.YogaYap.y,Config.Coords.YogaYap.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_yoga", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "yoga_c", duration = Config.yogasuresi * 1000, label = "Yoga Yapıyorsun.."})
  Citizen.Wait(Config.yogasuresi * 1000)
  if Config.removestressonyoga then
    TriggerServerEvent('dr:onyoga', _source)
  end
  if Config.removedrinkonspor then
    TriggerServerEvent('dr:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Susuzluğun arttı ve Stressin azaldı.', 5000)
  FreezeEntityPosition(playerPed, false)
  ClearPedTasksImmediately(playerPed)
end

function mekikcek()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
	TriggerEvent("mythic_progbar:client:progress", {name = "mekik_cek", duration = Config.mekiksuresi * 1000, label = "Mekik Çekiyorsun.."})
  Citizen.Wait(Config.mekiksuresi * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('dr:onspor', _source)
  end
  onspor = false
  exports['mythic_notify']:SendAlert('inform', 'Susuzluğun arttı..', 5000)
  FreezeEntityPosition(playerPed, false)
	ClearPedTasksImmediately(playerPed)
end

function sinavcek()
  local _source = source
  local playerPed = PlayerPedId()
  onspor = true
  SetEntityHeading(playerPed, Config.Coords.SinavCek.h)
  SetEntityCoords(playerPed, Config.Coords.SinavCek.x,Config.Coords.SinavCek.y,Config.Coords.SinavCek.z-0.95)
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
  TriggerEvent("mythic_progbar:client:progress", {name = "sinav_cek", duration = Config.sinavsuresi * 1000, label = "Şınav Çekiyorsun.."})
  Citizen.Wait(Config.sinavsuresi * 1000)
  if Config.removedrinkonspor then
    TriggerServerEvent('dr:onspor', _source)
  end
  exports['mythic_notify']:SendAlert('inform', 'Susuzluğun arttı..', 5000)
  onspor = false
  ClearPedTasksImmediately(playerPed)
  FreezeEntityPosition(playerPed, false)
end

function sual()
  local _source = source
  local playerPed = PlayerPedId()
  SetEntityHeading(playerPed, Config.Coords.SuAl.h)
    SetEntityCoords(playerPed, Config.Coords.SuAl.x,Config.Coords.SuAl.y,Config.Coords.SuAl.z-0.95)
    local dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'
	Citizen.Wait(1000)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(1)
    end
    TaskPlayAnim(playerPed, dict, 'machinic_loop_mechandplayer', 8.0, -8.0, 5000, 1, 0, false, false, false)
    TriggerEvent("mythic_progbar:client:progress", {name = "su_al", duration = Config.sualmazamani * 1000, label = "Su Alıyorsun.."})
    Citizen.Wait(Config.sualmazamani * 1000)
    TriggerServerEvent('dr:sual', _source)
    ClearPedTasksImmediately(playerPed)
end