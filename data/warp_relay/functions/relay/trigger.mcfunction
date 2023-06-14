tellraw @s {"text":"=====================================================","color":"yellow"}

tellraw @s [{"text":"Warp Relays","color":"light_purple"},{"text":" are structures you can build to instantly warp between two locations.","color":"white"}]
tellraw @s [{"text":"\nYou can build one by placing two "},{"text":"Gold Blocks","color":"yellow","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:gold_block"}}},{"text":" and two "},{"text":"Emerald Blocks","color":"green","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:emerald_block"}}},{"text":" on either side of a "},{"text":"Diamond Block","color":"aqua","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:diamond_block"}}},{"text":" in a plus-shape:"}]

tellraw @s ["  ",{"text":"G","color":"yellow","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:gold_block"}}}]
tellraw @s [{"text":"E","color":"green","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:emerald_block"}}},{"text":" ","hoverEvent": {"action": "show_text","contents": ""}},{"text":"D","color":"aqua","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:diamond_block"}}},{"text":" ","hoverEvent": {"action": "show_text","contents": ""}},{"text":"E","color":"green","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:emerald_block"}}}]
tellraw @s ["  ",{"text":"G\n","color":"yellow","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:gold_block"}}}]

tellraw @s [{"text":"To activate it, just stand on the "},{"text":"Diamond Block","color":"aqua","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:diamond_block"}}},{"text":" and it will start emitting particles."}]
tellraw @s {"text":"Then when you activate a second one, they will automatically link together."}

execute if score MAX_DISTANCE WR.config matches 1..10000 run tellraw @s {"text":"However, they can only link up to a distance of"}
execute if score MAX_DISTANCE WR.config matches 1..500 run tellraw @s [{"text": "500 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 501..1000 run tellraw @s [{"text": "1000 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 1001..1500 run tellraw @s [{"text": "1500 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 1501..2500 run tellraw @s [{"text": "2500 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 2501..5000 run tellraw @s [{"text": "5000 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 5001..7500 run tellraw @s [{"text": "7500 blocks","color":"red"},{"text":".","color":"white"}]
execute if score MAX_DISTANCE WR.config matches 7501..10000 run tellraw @s [{"text": "10000 blocks","color":"red"},{"text":".","color":"white"}]

execute if score MAX_DISTANCE WR.config matches ..-1 run tellraw @s [{"text":"Even better, they can link\n"},{"text":"across dimensions","color":"red"},{"text":"!","color":"white"}]

execute if score WARP_ALL_ENTITIES WR.config matches 1.. run tellraw @s [{"text":"\nOnce linked, "},{"text":"anything","color": "red"},{"text":" that steps on the central "},{"text":"Diamond Block","color":"aqua","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:diamond_block"}}},{"text":" will be warped to the other "},{"text":"Relay","color":"light_purple"},"."]
execute if score WARP_ALL_ENTITIES WR.config matches ..0 run tellraw @s [{"text":"\nOnce linked, "},{"text":"any player","color": "red"},{"text":" that steps on the central "},{"text":"Diamond Block","color":"aqua","hoverEvent": {"action": "show_item","contents": {"id": "minecraft:diamond_block"}}},{"text":" will be warped to the other "},{"text":"Relay","color":"light_purple"},"."]

tellraw @s [{"text":"=====================================================","color":"yellow"}]
