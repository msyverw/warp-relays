tellraw @p {"text":"This distance seems to be greater than the relays can handle, I should try a bit closer.","color":"gray"} 
kill @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1,sort=nearest,limit=1]
tag @p add WR.cooldown