function areVehicleDoorsOpen(vehicle)
    for doorIndex = 0, 5 do 
        local doorAngle = GetVehicleDoorAngleRatio(vehicle, doorIndex)
        if doorAngle > 0.0 or not Config.DoorOpen then
            return true
        end
    end
    return false
end

function getData()
    if tint == nil or plate == nil then
        Notify(Config.Translate.cannotGetData)
    else
        TriggerEvent("tintMeter:menu")
    end
end

function getTint()
    if tint == -1 then
        tint_label = Config.Translate.tint_none
    elseif tint == 0 then
        tint_label = Config.Translate.tint_stock
    elseif tint == 1 then
        tint_label = Config.Translate.tint_pure_black
    elseif tint == 2 then
        tint_label = Config.Translate.tint_dark_smoke
    elseif tint == 3 then
        tint_label = Config.Translate.tint_light_smoke
    elseif tint == 4 then
        tint_label = Config.Translate.tint_limo
    elseif tint == 5 then
        tint_label = Config.Translate.tint_green
    end
end

function TintMeter()
local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()),3.0,0,70)
    if vehicle ~= 0 then
    if areVehicleDoorsOpen(vehicle) then
        if Config._3dme then
        ExecuteCommand("me " .. Config.Translate._3dme)
        end
if lib.progressCircle({
    duration = 2000,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
        move = true,
    }, 
    anim = {
        dict = 'amb@world_human_tourist_map@female@base',
        clip = 'base'
    },
})then 
        if vehicle ~= 0 then
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()),3.0,0,70)
        tint = GetVehicleWindowTint(vehicle) 
        plate = GetVehicleNumberPlateText(vehicle)
    
    
        getTint()
        getData()
 
        elseif vehicle ~= 0 or not areVehicleDoorsOpen(vehicle) then
            Notify(Config.Translate.vehicle_not_nearby)
        else
            Notify(Config.Translate.door_is_closed)
        end
else 
    Notify(Config.Translate.end_process)
end
    else
        Notify(Config.Translate.door_is_closed)
    end
    else
        Notify(Config.Translate.vehicle_not_nearby)
    end
end


RegisterNetEvent('tintMeter:menu', function()
    lib.registerContext({
      id = 'tint_menu',
      title = Config.Translate.tint_meter,
      menu = 'tint_menu',
      options = {
        {
          title = Config.Translate.tint_meter .. ": ".. tint_label,
          description = Config.Translate.plate .. ": " .. plate,
          icon = 'car',
        }
      }
    })
    lib.showContext('tint_menu')
  end)
  exports('TintMeter', TintMeter)