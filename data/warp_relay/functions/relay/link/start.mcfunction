#Distance config options
execute if score MAX_DISTANCE WR.config matches ..0 run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 1..500 if entity @s[distance=..500] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 501..1000 if entity @s[distance=..1000] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 1001..1500 if entity @s[distance=..1500] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 1501..2500 if entity @s[distance=..2500] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 2501..5000 if entity @s[distance=..5000] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 5001..7500 if entity @s[distance=..7500] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 7501..10000 if entity @s[distance=..10000] run function warp_relay:relay/link/link
execute if score MAX_DISTANCE WR.config matches 10001.. run function warp_relay:relay/link/link

#Distance too far
execute unless score @p WR.index matches -1 run function warp_relay:relay/link/failed_by_distance
