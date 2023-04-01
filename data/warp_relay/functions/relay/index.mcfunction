execute store result score @s WR.index run scoreboard players add #MASTER WR.index 1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=WR.linking,distance=..1,sort=nearest,limit=1] WR.index = @s WR.index
