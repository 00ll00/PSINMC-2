#output tps.avg
data modify storage ps:tps cache set from storage ps:tps mem
scoreboard players set $tps.avg PS.mem 0
function ps:tps/getavg_
execute store result score #tps.temp PS.mem run data get storage ps:tps mem
scoreboard players operation $tps.avg PS.mem /= #tps.temp PS.mem