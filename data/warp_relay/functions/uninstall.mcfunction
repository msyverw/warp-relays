scoreboard objectives remove warp_relays
scoreboard objectives remove WR.index
scoreboard objectives remove WR.config
scoreboard objectives remove WR.timer

#Remove Warp Relays
execute at @e[type=minecraft:area_effect_cloud,tag=WR.warp] run function warp_relay:forceload/remove
kill @e[type=minecraft:area_effect_cloud,tag=WR.warp]

data remove storage warp_relay:config set
data remove storage warp_relay:loading marked
data remove storage warp_relay:tp same_dimension

datapack disable "file/Warp Relays 1.1"
datapack disable "file/Warp Relays 1.1.zip"
tellraw @a {"text":"Warp Relays 1.1 successfully uninstalled!","color":"green"}
