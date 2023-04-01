scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1,sort=nearest,limit=1] WR.index = @s WR.index
tag @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1,sort=nearest,limit=1] remove WR.linking
tag @s remove WR.linking
scoreboard players set @p WR.index -1
