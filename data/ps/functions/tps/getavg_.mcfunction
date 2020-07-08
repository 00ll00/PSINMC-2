execute store result score #tps.temp PS.mem run data get storage ps:tps cache[0]
data remove storage ps:tps cache[0]
scoreboard players operation $tps.avg PS.mem += #tps.temp PS.mem
execute if data storage ps:tps cache[0] run function ps:tps/getavg_