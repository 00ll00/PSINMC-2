scoreboard players operation $focus.temp PS.mem = $focus.sx PS.mem
scoreboard players operation $focus.temp PS.mem *= $focus.sx PS.mem
scoreboard players operation $focus.d PS.mem = $focus.temp PS.mem
scoreboard players operation $focus.temp PS.mem = $focus.sy PS.mem
scoreboard players operation $focus.temp PS.mem *= $focus.sy PS.mem
scoreboard players operation $focus.d PS.mem += $focus.temp PS.mem
scoreboard players operation $focus.temp PS.mem = $focus.sz PS.mem
scoreboard players operation $focus.temp PS.mem *= $focus.sz PS.mem
scoreboard players operation $focus.d PS.mem += $focus.temp PS.mem
execute if score $focus.d PS.mem >= $focus.dms PS.mem run scoreboard players set $focus.g PS.mem 2