
AddEventHandler("45acpbox",function ()
	if lib.progressBar({
		duration = 2000,
		label = 'Rozbaluješ krabičku',
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},

	}) then 	

	TriggerServerEvent("45acp:giv")
end
end)
AddEventHandler("beanbagbox",function ()
	if lib.progressBar({
		duration = 2000,
		label = 'Rozbaluješ krabičku',
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},

	}) then 	

	TriggerServerEvent("beanbag:giv")
end
end)
AddEventHandler("9mmbox",function ()
	if lib.progressBar({
		duration = 2000,
		label = 'Rozbaluješ krabičku',
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},

	}) then 	

	TriggerServerEvent("box:giv")
end
end)
AddEventHandler("shotgunbox",function ()
	if lib.progressBar({
		duration = 2000,
		label = 'Rozbaluješ krabičku',
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},

	}) then 
		
	TriggerServerEvent("shotgunbox:giv")
end
end)
AddEventHandler("riflebox",function ()
	if lib.progressBar({
		duration = 2000,
		label = 'Rozbaluješ krabičku',
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
		},

	}) then 
			
	TriggerServerEvent("riflebox:giv")
end
end)

function bmitemx4(Price,Weapon)
	local count =	lib.inputDialog('Množství', {
			
		{type = 'number',
		
		icon = 'hashtag',min=1,default=1,required= true},
		
	  })
	  Count = table.unpack(count)
	
	local price = Price
	local money = exports.ox_inventory:Search('count','money')
	
		if money >= price *Count then
			
			TriggerServerEvent('c50dd67466812dd7f8e163b4cf948115',Count,Weapon,Price)
		else
		local missing_money =price*Count - money
			lib.notify({title = 'Nedostatek peňez',description='Chybí ti ' .. missing_money..'$',type = 'error'})
		end
	
end
local options = {
	{
	   label = "Zavolat",
	   name = "phoneboot",
	   distance = 1,
	   icon = "fa-solid fa-phone",
	   onSelect = function ()
		   phoneboot()
	   end
	}
   }
   

local model = "prop_phonebox_01b"
exports.ox_target:addModel(model, options)
lib.registerContext({
	id="bmmenu",
	title = "Black Market",
	canClose = true,
	options = {
		{
		title = "Pistol",
		icon = "fa-solid fa-gun",
        image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_pistol.png?raw=true',
		description = 'Cena: '..Config.Pistol_Price..'$',
		onSelect = function()
		bmitemx4(Config.Pistol_Price,'WEAPON_PISTOL')
        end
		},
		{
			title = "Pistol .50",
			icon = "fa-solid fa-gun",
			description = 'Cena: '..Config.Pistol_50_Price..'$',
			image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_pistol50.png?raw=true',
			onSelect = function()
				bmitemx4(Config.Pistol_50_Price,'WEAPON_PISTOL50')
			end
			},
			{
				title = "Machine Pistol",
				icon = "fa-solid fa-gun",
				image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_machinepistol.png?raw=true',
				description = 'Cena: '..Config.Pistol_Machine_Price..'$',
				onSelect = function()
				bmitemx4(Config.Pistol_Machine_Price,'WEAPON_MACHINEPISTOL')
				end
			},
			{
				title = "Combat Pistol",
				icon = "fa-solid fa-gun",
				image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_combatpistol.png?raw=true',
				description = 'Cena: '..Config.Pistol_Combat_Price..'$',
				onSelect = function()
				bmitemx4(Config.Pistol_AP_Price,'WEAPON_COMBATPISTOL')
				end
			},
			{
				title = "Glock 19 Gen4",
				icon = "fa-solid fa-gun",
				image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_glock19.png?raw=true',
				description = 'Cena: '..Config.Pistol_GLOCK19_Price..'$',
				onSelect = function()
				bmitemx4(Config.Pistol_GLOCK19_Price,'WEAPON_GLOCK19GEN4')
				end
			},
			{
				title = "SNS Pistol",
				icon = "fa-solid fa-gun",
				image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_snspistol.png?raw=true',
				description = 'Cena: '..Config.Pistol_SNS_Price..'$',
				onSelect = function()

				bmitemx4(Config.Pistol_Combat_Price,'WEAPON_SNSPISTOL')
				end
				},
				{
					title = "Ceramic Pistol",
					icon = "fa-solid fa-gun",
					image ='https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/pistol/weapon_ceramicpistol.png?raw=true',
					description = 'Cena: '..Config.Pistol_CERAMIC_Price..'$',
					onSelect = function()
						bmitemx4(Config.Pistol_CERAMIC_Price,'WEAPON_CERAMICPISTOL')
					end
					},
	
		{
			title = "Vystřelovací nožík",
			icon = 'fa-solid fa-utensils',
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/meele/weapon_switchblade.png?raw=true',
			description = 'Cena: '..Config.SwitchBlade_Price..'$',
			onSelect = function()
				bmitemx4(Config.SwitchBlade_Price,'WEAPON_SWITCHBLADE')
			end
		},
		{
			title = "Micro SMG",
			icon = "fa-solid fa-gun",
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/weapon_microsmg.png?raw=true',
			description = 'Cena: '..Config.Micro_SMG_Price..'$',
			onSelect = function()
			bmitemx4(Config.Micro_SMG_Price,'WEAPON_MICROSMG')
			end
			
		},
		{
			title = "Mini SMG",
			icon = "fa-solid fa-gun",
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/weapon_minismg.png?raw=true',
			description = 'Cena: '..Config.Mini_SMG_Price..'$',
			onSelect = function()
			bmitemx4(Config.Mini_SMG_Price,'WEAPON_MINISMG')
			end,
			
		},
	
			
			}
					})

lib.registerContext({
	id="bmmenu2",
	title = "Black Market",
	canClose = true,
	options = {
		{
			title = "SMG",
			icon = "fa-solid fa-gun",
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/weapon_smg.png?raw=true',
			description = 'Cena: '..Config.SMG_Price..'$',
			onSelect = function()
				bmitemx4(Config.SMG_Price,'WEAPON_SMG')
			end,
			
		},
		
		{
			title = "Assault rifle",
			icon = "fa-solid fa-gun",
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/ar/weapon_assaultrifle.png?raw=true',
			description = 'Cena: '..Config.Assault_Rifle_Price..'$',
			onSelect = function()
				bmitemx4(Config.Assault_Rifle_Price,'WEAPON_ASSAULTRIFLE')
			end,
			
		},
		{
			title = "Carbine rifle",
			icon = "fa-solid fa-gun",
			image = 'https://github.com/McKleans-Scripts/mk-items/blob/main/weapons/weapon_carbinerifle.png?raw=true',
			description = 'Cena: '..Config.Carbine_Rifle_Price..'$',
			onSelect = function()
				bmitemx4(Config.Carbine_Rifle_Price,'WEAPON_CARBINERIFLE')

			end,
			
		},
		
	
	
			
			}
					})

function phoneboot()
	local input =  lib.inputDialog('Telefoní budka', {
	
		{type = 'number', label = 'Telefoní číslo', description = 'Můžeš zavolat někomu z místních', icon = 'phone'},
		
	  })
	local input2 =table.unpack(input)   
	if input2 == Config.BMNUMBER1 then
	
		local dealerped = 's_m_y_dealer_01'
		if math.random() <= 0.1 then
		
		 Coords =  vec4 (1737.4243, 3292.6125, 41.7556,14)
		elseif math.random()<= 0.1 then
         Coords = vec4(922.2681, -1970.5261, 30.3815, 354.5045)
		elseif math.random() <= 0.1 then
			 Coords = vec4(2789.8459, -627.3545, 5.7845, 270.3458)
		elseif math.random() <= 0.1 then
			 Coords = vec4(313.5269, 287.8230, 105.5137, 56.5218)
		elseif math.random() <= 0.1 then
		Coords = vec4(2488.4756, 3441.7578, 51.0799, 326.3639)
		elseif math.random() <= 0.1 then
		Coords = vec4(1523.8770, 1701.2739, 109.9041, 333.8933)
		elseif math.random() <= 0.1 then
		 Coords = vec4(2652.0051, 1696.1919, 24.4882, 10.3102)
		
		
		
		
	end
		
		
	
		local options2 = {{
			label = "Promluvit s pánem",
			name = "blackmarket",
			distance = 2,
			icon ="fa-solid fa-skull",
			onSelect = function ()
				lib.showContext("bmmenu")
			end
		}}
		
		lib.requestModel(dealerped)
		local bmPed =CreatePed(
			1 --[[ integer ]], 
			GetHashKey(dealerped) --[[ Hash ]], 
			Coords.x, Coords.y, Coords.z,
			Coords.w --[[ number ]], 
			true --[[ boolean ]], 
			true --[[ boolean ]]
		)
		SetEntityInvincible(
			bmPed --[[ Entity ]], 
			true --[[ boolean ]]
		)
		
		
		SetBlockingOfNonTemporaryEvents(
			bmPed --[[ Ped ]], 
			true --[[ boolean ]]
		)
		
		exports.ox_target:addLocalEntity(bmPed, options2)
	

	
	SetNewWaypoint(
		Coords.x --[[ number ]],Coords.y --[[ number ]]
)

--FreezeEntityPosition(bmPed --[[ Entity ]], true --[[ boolean ]])

Citizen.Wait(Config.TimeBeforeDelete*1000*60)
DeleteEntity(bmPed)

	
elseif input2 == Config.BMNUMBER2 then
	local dealerped = 's_m_y_dealer_01'
		
	if math.random() <= 0.1 then
		
		Coords =  vec4 (1737.4243, 3292.6125, 41.7556,14)
	   elseif math.random()<= 0.1 then
		Coords = vec4(922.2681, -1970.5261, 30.3815, 354.5045)
	   elseif math.random() <= 0.1 then
			Coords = vec4(2789.8459, -627.3545, 5.7845, 270.3458)
	   elseif math.random() <= 0.1 then
			Coords = vec4(313.5269, 287.8230, 105.5137, 56.5218)
	   elseif math.random() <= 0.1 then
	   Coords = vec4(2488.4756, 3441.7578, 51.0799, 326.3639)
	   elseif math.random() <= 0.1 then
	   Coords = vec4(1523.8770, 1701.2739, 109.9041, 333.8933)
	   elseif math.random() <= 0.1 then
		Coords = vec4(2652.0051, 1696.1919, 24.4882, 10.3102)
	   
	   
	   
		return
   end

		
		
	
		local options2 = {{
			label = "Promluvit s pánem",
			name = "blackmarket",
			distance = 2,
			icon ="fa-solid fa-skull",
			onSelect = function ()
				lib.showContext("bmmenu2")
			end
		}}
		
		lib.requestModel(dealerped)
		local bmPed =CreatePed(
			1 --[[ integer ]], 
			GetHashKey(dealerped) --[[ Hash ]], 
			Coords.x, Coords.y, Coords.z,
			Coords.w --[[ number ]], 
			true --[[ boolean ]], 
			true --[[ boolean ]]
		)
		SetEntityInvincible(
			bmPed --[[ Entity ]], 
			true --[[ boolean ]]
		)
		--FreezeEntityPosition(bmPed --[[ Entity ]],true --[[ boolean ]])
		SetBlockingOfNonTemporaryEvents(
			bmPed --[[ Ped ]], 
			true --[[ boolean ]]
		)
		exports.ox_target:addLocalEntity(bmPed, options2)
	


	SetNewWaypoint(
		Coords.x --[[ number ]],Coords.y --[[ number ]]
)


Citizen.Wait(Config.TimeBeforeDelete*1000*60)
FreezeEntityPosition(bmPed --[[ Entity ]], true --[[ boolean ]])
DeleteEntity(bmPed)







	end


	
end

	

