scoreboard players operation #TP WR.index = @e[type=minecraft:area_effect_cloud,tag=WR.warp,distance=..1,sort=nearest,limit=1] WR.index

execute if score AUTO_ROTATE WR.config matches 1.. as @e[type=minecraft:area_effect_cloud,tag=WR.warp] if entity @s[distance=1..] if score #TP WR.index = @s WR.index run tp @e[tag=!WR.warp,distance=..1,sort=nearest,limit=1] @s

execute unless score AUTO_ROTATE WR.config matches 1.. run data merge storage warp_relay:tp {same_dimension: false}
execute unless score AUTO_ROTATE WR.config matches 1.. store success storage warp_relay:tp same_dimension byte 1 at @e[type=minecraft:area_effect_cloud,tag=WR.warp,distance=1..] if score #TP WR.index = @e[type=minecraft:area_effect_cloud,tag=WR.warp,distance=..1,sort=nearest,limit=1] WR.index run tp @s ~ ~ ~
execute unless score AUTO_ROTATE WR.config matches 1.. if data storage warp_relay:tp {same_dimension: false} as @e[type=minecraft:area_effect_cloud,tag=WR.warp] if entity @s[distance=1..] if score #TP WR.index = @s WR.index run tp @e[tag=!WR.warp,distance=..1,sort=nearest,limit=1] @s

tag @s add WR.cooldown
