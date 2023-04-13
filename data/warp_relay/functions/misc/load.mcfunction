#Initialize scoreboard
scoreboard objectives add warp_relays trigger
scoreboard objectives add WR.index dummy
scoreboard objectives add WR.config dummy
scoreboard objectives add WR.timer dummy
execute unless data storage warp_relay:config set run function warp_relay:misc/config_set
