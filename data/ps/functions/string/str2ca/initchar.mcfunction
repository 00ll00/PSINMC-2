scoreboard players set #str.str2ca.high PS.mem 96
scoreboard players set #str.str2ca.low PS.mem -1
execute store result score $str.id2char.in PS.mem run scoreboard players set #str.str2ca.now PS.mem 48
function ps:string/id2char/call