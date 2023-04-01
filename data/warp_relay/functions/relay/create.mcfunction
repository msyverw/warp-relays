scoreboard players set #CREATION WR.timer 0

#Summon Marker
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["WR.warp","WR.linking","global.ignore"],OnGround:1b}
function warp_relay:forceload/add

#If first linking relay still exists, create link
execute if score MAX_DISTANCE WR.config matches ..-1 as @e[type=minecraft:area_effect_cloud,tag=WR.linking] if score @s WR.index = @p WR.index run function warp_relay:relay/start_link
execute unless score MAX_DISTANCE WR.config matches ..-1 as @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=1..] if score @s WR.index = @p WR.index run function warp_relay:relay/start_link
#Assign link number if none exists
execute unless score @s WR.index matches -1 if entity @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1] run function warp_relay:relay/index
#Cleanup
scoreboard players reset @s[scores={WR.index=-1}] WR.index
