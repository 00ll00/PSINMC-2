#as marker
scoreboard players operation #focus.ax PS.mem += #focus.rx PS.mem
scoreboard players set $focus.f PS.mem 1
scoreboard players remove $focus.sx PS.mem 1
execute positioned ~-1 ~ ~ run function ps:focus/block/recu