scoreboard players set #DELETION WR.timer 0

tag @e[type=minecraft:area_effect_cloud,tag=WR.warp,predicate=!warp_relay:valid_relay] add WR.delete
execute at @e[type=minecraft:area_effect_cloud,tag=WR.delete] as @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.delete] if score @s WR.index = @e[type=minecraft:area_effect_cloud,tag=WR.delete,distance=..1,sort=nearest,limit=1] WR.index run tag @s add WR.delete

# Check chunk loading and delete
execute as @e[type=minecraft:area_effect_cloud,tag=WR.delete] at @s run function warp_relay:relay/forceload/remove
