# Remove Warp Relays
execute as @e[type=minecraft:area_effect_cloud,tag=WR.warp] at @s run function warp_relay:relay/forceload/remove

# Disable datapack
execute store success storage warp_relay:uninstall success byte 1 run datapack disable "file/WarpRelays-v1.1.2.zip"
execute if data storage warp_relay:uninstall {success: true} run tellraw @a {"text":"Warp Relays 1.1.2 was successfully uninstalled!","color":"green"}
execute if data storage warp_relay:uninstall {success: false} run tellraw @a {"text":"Unable to disable Warp Relays 1.1.2","color":"red"}

# Remove scoreboard objectives
scoreboard objectives remove warp_relays
scoreboard objectives remove WR.index
scoreboard objectives remove WR.config
scoreboard objectives remove WR.timer
scoreboard objectives remove WR.math

# Remove storage
data remove storage warp_relay:config set
data remove storage warp_relay:loading marked
data remove storage warp_relay:tp same_dimension
data remove storage warp_relay:uninstall success
