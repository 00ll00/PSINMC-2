#as marker
scoreboard players operation $focus.az PS.mem -= $focus.rz PS.mem
scoreboard players set $focus.f PS.mem 6
scoreboard players add $focus.sz PS.mem 1
execute positioned ~ ~ ~1 run function ps:focus/block/recu