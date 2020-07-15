data remove storage ps:tps mem[0]
scoreboard players remove #tps.temp PS.mem 1
execute if score #tps.temp PS.mem >= $tps.maxmem PS.sys run function ps:tps/refresh_