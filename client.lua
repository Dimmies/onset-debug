local DebugDoors = false
local DebugObjects = false
local DebugPickups = false
local DebugVeh = false
local DebugNPC = false
local DebugPlayer = false

AddRemoteEvent("DebugDoors", function()
	DebugDoors = not DebugDoors
end)

AddRemoteEvent("DebugObjects", function()
	DebugObjects = not DebugObjects
end)

AddRemoteEvent("DebugPickups", function()
	DebugPickups = not DebugPickups
end)

AddRemoteEvent("DebugVeh", function()
	DebugVeh = not DebugVeh
end)

AddRemoteEvent("DebugNPC", function()
	DebugNPC = not DebugNPC
end)

AddRemoteEvent("DebugPlayer", function()
	DebugPlayer = not DebugPlayer
end)

AddEvent("OnRenderHUD", function()
	sX, sY = GetScreenSize()

	SetDrawColor(RGB(255, 0, 0))
	SetTextDrawScale(1.0, 1.0)

	if DebugDoors == true then
		doors = GetStreamedDoors()
		if #doors ~= 0 then
			for k,v in pairs(doors) do
				x, y, z = GetDoorLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

	if DebugObjects == true then
		objs = GetStreamedObjects() -- // You can change this to GetStreamedObjects(false) to remove debug text on objects attached to your player
		if #objs ~= 0 then
			for k,v in pairs(objs) do
				x, y, z = GetObjectLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

	
	if DebugPickups == true then
		pickups = GetStreamedPickups()
		if #pickups ~= 0 then
			for k,v in pairs(pickups) do
				x, y, z = GetPickupLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

	if DebugVeh == true then
		vehs = GetStreamedVehicles()
		if #vehs ~= 0 then
			for k,v in pairs(vehs) do
				x, y, z = GetVehicleLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

	if DebugNPC == true then
		npcs = GetStreamedNPC()
		if #npcs ~= 0 then
			for k,v in pairs(npcs) do
				x, y, z = GetNPCLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

	if DebugPlayer == true then
		plys = GetStreamedPlayers()
		if #plys ~= 0 then
			for k,v in pairs(plys) do
				x, y, z = GetPlayerLocation(v)
				canSee, sX, sY = WorldToScreen(x, y, z)
				if canSee then
					DrawText(sX, sY, v)
				end
			end
		end
	end

end)