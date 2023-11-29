
                                                                                                                                                       
                                                                                                                                                            



RegisterNetEvent("box:giv")
AddEventHandler("box:giv",function ()
    exports.ox_inventory:RemoveItem(source,'ammo_box_9mm',1)
    exports.ox_inventory:AddItem(source,'ammo-9', 30)
  
end)

RegisterNetEvent("shotgunbox:giv")
AddEventHandler("shotgunbox:giv",function ()
    exports.ox_inventory:RemoveItem(source,'ammo_box_shotgun',1)
    exports.ox_inventory:AddItem(source,'ammo-shotgun', 12)
end)

RegisterNetEvent("beanbag:giv")
AddEventHandler("beanbag:giv",function ()
    exports.ox_inventory:RemoveItem(source,'ammo_box_beanbag',1)
    exports.ox_inventory:AddItem(source,'ammo-beanbag', 12)
end)
   
RegisterNetEvent("45acp:giv")
AddEventHandler("45acp:giv",function ()
    exports.ox_inventory:RemoveItem(source,'ammo_box_45acp',1)
    exports.ox_inventory:AddItem(source,'ammo-45', 30)
end)


RegisterNetEvent("riflebox:giv")
AddEventHandler("riflebox:giv",function ()
    exports.ox_inventory:RemoveItem(source,'ammo_box_rifle', 1)
    exports.ox_inventory:AddItem(source,'ammo-rifle', 30)
end)
RegisterNetEvent('c50dd67466812dd7f8e163b4cf948115')
AddEventHandler('c50dd67466812dd7f8e163b4cf948115',function (Count,Weapon,Price)
        
if exports.ox_inventory:CanCarryItem(source, Weapon, Count) then


    exports.ox_inventory:RemoveItem(source,'money', Count*Price)
    exports.ox_inventory:AddItem(source,Weapon, Count,{ registered = false })
    local finalprice = Count*Price
    local playername = GetPlayerName(
		source --[[ string ]]
	)
    print(playername .. ' koupil ' .. Weapon .. ' ' .. Count .. ' kusů za: ' .. finalprice)

end
end)



local label = [[




 __  __   _____    _____   _  __                _____   _______   _    _   ______   ______ 
|  \/  | |_   _|  / ____| | |/ /     /\        / ____| |__   __| | |  | | |  ____| |  ____|
| \  / |   | |   | (___   | ' /     /  \      | (___      | |    | |  | | | |__    | |__   
| |\/| |   | |    \___ \  |  <     / /\ \      \___ \     | |    | |  | | |  __|   |  __|  
| |  | |  _| |_   ____) | | . \   / ____ \     ____) |    | |    | |__| | | |      | |     
|_|  |_| |_____| |_____/  |_|\_\ /_/    \_\   |_____/     |_|     \____/  |_|      |_|     
                                                                                           
                                                                                           

                                                                                          
                                                                                          
                        by:Methdealer ]]
Citizen.Wait(5000)
print( label )
