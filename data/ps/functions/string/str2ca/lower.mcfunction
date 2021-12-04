scoreboard players operation #str.str2ca.high PS.mem = #str.str2ca.now PS.mem
scoreboard players operation #str.str2ca.now PS.mem = #str.str2ca.high PS.mem
scoreboard players operation #str.str2ca.now PS.mem -= #str.str2ca.low PS.mem
scoreboard players add #str.str2ca.now PS.mem 1
scoreboard players operation #str.str2ca.now PS.mem /= $2 PS.const
execute store result score $str.id2char.in PS.mem run scoreboard players operation #str.str2ca.now PS.mem += #str.str2ca.low PS.mem
function ps:string/id2char/call