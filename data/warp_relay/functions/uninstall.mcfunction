scoreboard objectives remove warp_relays
scoreboard objectives remove WR.index
scoreboard objectives remove WR.config
scoreboard objectives remove WR.timer
scoreboard objectives remove WR.math

#Remove Warp Relays
execute as @e[type=minecraft:area_effect_cloud,tag=WR.warp] at @s run function warp_relay:relay/forceload/remove
#Probably not necessary anymore, but left in just in case
kill @e[type=minecraft:area_effect_cloud,tag=WR.warp]

data remove storage warp_relay:config set
data remove storage warp_relay:loading marked
data remove storage warp_relay:tp same_dimension

execute store success storage warp_relay:uninstall success byte 1 run datapack disable "file/warp-relays-1.1"
execute if data storage warp_relay:uninstall {success: true} run tellraw @a {"text":"Warp Relays 1.1 was successfully uninstalled!","color":"green"}
execute if data storage warp_relay:uninstall {success: false} run tellraw @a {"text":"Unable to disable Warp Relays 1.1","color":"red"}

data remove storage warp_relay:uninstall success
