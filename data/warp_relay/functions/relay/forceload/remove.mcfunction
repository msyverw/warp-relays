execute store success storage warp_relay:loading marked byte 1.0 run forceload query ~ ~
execute if data storage warp_relay:loading {marked: true} run function warp_relay:relay/forceload/check_remove
