scoreboard players add #ENTITIES WR.timer 1
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config as @e[type=!minecraft:player,tag=!WR.cooldown,predicate=warp_relay:valid_relay,tag=!global.ignore,tag=!global.ignore.pos] at @s if entity @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.linking,distance=..1] run function warp_relay:relay/tp
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config run scoreboard players set #ENTITIES WR.timer 0
