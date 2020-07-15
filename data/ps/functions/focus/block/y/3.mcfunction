#as marker
scoreboard players operation #focus.ay PS.mem += #focus.ry PS.mem
scoreboard players set $focus.f PS.mem 3
scoreboard players remove $focus.sy PS.mem 1
execute positioned ~ ~-1 ~ run function ps:focus/block/recu