#Summon Marker
execute align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["WR.warp", "WR.linking", "WR.super", "global.ignore"], OnGround: 1b}
function warp_relay:forceload/add

#If first linking relay exists, create link
execute if score MAX_DISTANCE WR.config matches ..-1 as @e[type=minecraft:area_effect_cloud,tag=WR.linking,tag=WR.super] if score @s WR.index = @p WR.index run function warp_relay:relay/link
execute unless score MAX_DISTANCE WR.config matches ..-1 as @e[type=minecraft:area_effect_cloud,tag=WR.linking,tag=WR.super,distance=1..] if score @s WR.index = @p WR.index run function warp_relay:relay/link

#Check if a link failed because of cross-type failure
execute if entity @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1,sort=nearest,limit=1] if entity @e[type=minecraft:area_effect_cloud,tag=WR.linking,tag=!WR.super] if score @s WR.index = @p WR.index run function warp_relay:relay/link_failed
