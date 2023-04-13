scoreboard players set #CREATION WR.timer 0

#Create and link based on type
execute if entity @s[predicate=warp_relay:classic_relay] run function warp_relay:relay/create_classic
execute if entity @s[predicate=warp_relay:super_relay] run function warp_relay:relay/create_super

#Assign link number if none exists
execute unless score @s WR.index matches -1 if entity @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1] run function warp_relay:relay/link/index

#Cleanup
scoreboard players reset @s[scores={WR.index=-1}] WR.index
