#as cb
execute store success score #str.str2ca.timecheck PS.mem run data modify block 29999999 2 3005 LastOutput set from block 29999999 1 3005 LastOutput
execute store success score #str.str2ca.compres PS.mem run data modify block 29999999 1 3003 LastOutput set from block 29999999 1 3004 LastOutput

execute if score #str.str2ca.timecheck PS.mem matches 0 if score #str.str2ca.compres PS.mem matches 0 run function ps:string/str2ca/higher
execute if score #str.str2ca.timecheck PS.mem matches 0 if score #str.str2ca.compres PS.mem matches 1 run function ps:string/str2ca/lower
#tellraw @a ["high:",{"score":{"name":"#str.str2ca.high","objective":"PS.mem"}}," low:",{"score":{"name":"#str.str2ca.low","objective":"PS.mem"}}," now:",{"score":{"name":"#str.str2ca.now","objective":"PS.mem"}}]
execute unless score #str.str2ca.now PS.mem matches 0..95 run function ps:string/str2ca/fatal
execute if score #str.str2ca.now PS.mem = #str.str2ca.high PS.mem if score $str.str2ca.busy PS.mem matches 1 run function ps:string/str2ca/nextchar
execute if score #str.str2ca.loop PS.mem >= #str.str2ca.break PS.mem run function ps:string/str2ca/pause