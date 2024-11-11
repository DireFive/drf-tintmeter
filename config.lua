Config = {}

-- ####    ####    ####     #####     #####     #####               #####   #####   #         #   ##### 
-- #   #    ##     #   #    #        ##    #      #                 #         #      #       #    #     
-- #   #    ##     #   #    #        ##           #                 #         #       #     #     #     
-- #   #    ##     ####     #####    ##           #                 #####     #        #   #      ##### 
-- #   #    ##     #  #     #        ##    #      #                 #         #         # #       #     
-- ####    ####    #   #    #####     #####       #                 #       #####        #        ##### 


Config._3dme = false -- Turn on only if you had on server /me command 

-- Settings of animation --
Config.Animation_Dict = "amb@world_human_tourist_map@female@base"
Config.Animation_Clip = "base"
Config.Animation_Duration = 3000
-- Setting of tintmeter if you need open door for check or not 
Config.DoorOpen = true 

Config.Translate = {  -- Translation
    vehicle_not_nearby = "Vehicle is not nearby",
    door_is_closed = "Door is closed",
    tint_none = "None",
    tint_stock = "Stock",
    tint_pure_black = "Pure Black",
    tint_dark_smoke = "Dark Smoke",
    tint_light_smoke = "Light Smoke",
    tint_limo = "Limo",
    tint_green = "Green",
    tint_meter = "Tint Meter",
    plate = "Vehicle Plate",
    end_process = "Cancelled progressbar",
    cannotGetData = "Cannot get tint or plate",
    _3dme = "Controling tint of windows",
}

function Notify(text)  -- There you can replace you notify
    lib.notify({
        title = 'Tint Meter',
        description = text,
        type = 'info'
    })
end