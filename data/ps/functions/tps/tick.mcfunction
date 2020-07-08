scoreboard players add $tps.counter PS.mem 1
execute store success score $tps.change PS.mem run data modify storage ps:tps LastOutput set from block 29999999 5 3007 LastOutput
execute if score $tps.change PS.mem matches 1 run function ps:tps/refresh