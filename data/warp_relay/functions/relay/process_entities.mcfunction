scoreboard players add #ENTITIES WR.timer 1
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config at @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.linking] as @e[type=!minecraft:player,tag=!WR.cooldown,tag=!global.ignore,tag=!global.ignore.pos,distance=..1,predicate=warp_relay:valid_relay] at @s run function warp_relay:relay/tp
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config run scoreboard players set #ENTITIES WR.timer 0
