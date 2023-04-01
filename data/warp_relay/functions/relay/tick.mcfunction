#If player is on valid structure, create relay
scoreboard players add #CREATION WR.timer 1
execute if score #CREATION WR.timer >= CREATION_PERIOD WR.config as @a[tag=!WR.cooldown,predicate=warp_relay:valid_relay,tag=!global.ignore] at @s unless entity @e[type=minecraft:area_effect_cloud,tag=WR.warp,distance=..3] run function warp_relay:relay/create

#Teleport players
execute as @a[tag=!WR.cooldown,predicate=warp_relay:valid_relay,tag=!global.ignore,tag=!global.ignore.pos] at @s if entity @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.linking,distance=..1] run function warp_relay:relay/tp

#Teleport other entities
scoreboard players add #ENTITIES WR.timer 1
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config if score WARP_ALL_ENTITIES WR.config matches 1.. as @e[type=!minecraft:player,tag=!WR.cooldown,predicate=warp_relay:valid_relay,tag=!global.ignore,tag=!global.ignore.pos] at @s if entity @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.linking,distance=..1] run function warp_relay:relay/tp
execute if score #ENTITIES WR.timer >= ENTITY_WARP_PERIOD WR.config run scoreboard players set #ENTITIES WR.timer 0

#Remove cooldown tag
execute as @e[tag=WR.cooldown] at @s unless block ~ ~-1 ~ minecraft:diamond_block run tag @s remove WR.cooldown

#Make particles
execute at @e[type=minecraft:area_effect_cloud,tag=WR.warp,tag=!WR.linking] run particle minecraft:witch ~ ~.5 ~ .2 .3 .2 0 2 force
execute at @e[type=minecraft:area_effect_cloud,tag=WR.linking] run particle minecraft:instant_effect ~ ~.5 ~ .2 .3 .2 0 1 force

#Rotate markers
execute if score AUTO_ROTATE WR.config matches 1.. as @e[type=minecraft:area_effect_cloud,tag=WR.warp] at @s facing entity @p[distance=3..3.1] feet run tp @s ~ ~ ~ ~ 0

#Delete warp markers that are no longer valid
scoreboard players add #DELETION WR.timer 1
execute if score #DELETION WR.timer >= DELETION_PERIOD WR.config run function warp_relay:relay/deletion

#Trigger stuff
scoreboard players enable @a warp_relays
execute as @a[scores={warp_relays=1..}] run function warp_relay:relay/trigger
scoreboard players set @a warp_relays 0
