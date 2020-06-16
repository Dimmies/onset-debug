AddCommand("ddoors", function(player)
    CallRemoteEvent(player, "DebugDoors")
end)

AddCommand("dobjects", function(player)
    CallRemoteEvent(player, "DebugObjects")
end)

AddCommand("dpickups", function(player)
    CallRemoteEvent(player, "DebugPickups")
end)

AddCommand("dveh", function(player)
    CallRemoteEvent(player, "DebugVeh")
end)

AddCommand("dnpc", function(player)
    CallRemoteEvent(player, "DebugNPC")
end)

AddCommand("dplayer", function(player)
    CallRemoteEvent(player, "DebugPlayer")
end)