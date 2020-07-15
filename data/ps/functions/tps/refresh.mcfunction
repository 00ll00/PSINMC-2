execute store result storage ps:tps now int 1 run scoreboard players operation $tps.value PS.mem = $tps.counter PS.mem
scoreboard players set $tps.counter PS.mem 0

#compute average
execute store result score #tps.temp PS.mem run data get storage ps:tps mem
execute if score #tps.temp PS.mem >= $tps.maxmem PS.sys run function ps:tps/refresh_
data modify storage ps:tps mem append from storage ps:tps now
function ps:tps/getavg

#refresh bossbar
execute store result bossbar ps:tps value run scoreboard players get $tps.value PS.mem
execute if score $tps.value PS.mem matches 0..4 run bossbar set ps:tps color red
execute if score $tps.value PS.mem matches 5..9 run bossbar set ps:tps color pink
execute if score $tps.value PS.mem matches 10..18 run bossbar set ps:tps color yellow
execute if score $tps.value PS.mem matches 19..21 run bossbar set ps:tps color green
execute if score $tps.value PS.mem matches 22.. run bossbar set ps:tps color blue
