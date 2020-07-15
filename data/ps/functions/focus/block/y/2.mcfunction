#as marker
scoreboard players operation #focus.ay PS.mem -= #focus.ry PS.mem
scoreboard players set $focus.f PS.mem 4
scoreboard players add $focus.sy PS.mem 1
execute positioned ~ ~1 ~ run function ps:focus/block/recu