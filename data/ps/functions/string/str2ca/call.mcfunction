#busy checked; suspend fun
#input:
#   storage ps:str str2ca.in
#   storage ps:str str2ca.callback
#suspend callback: storage ps:str str2ca.callback
#output: $str.str2ca.len
#suspend output:
#   storage ps:str str2ca.out
#   $str.str2ca.suc
#flag: $str.str2ca.busy

data modify storage ps:str str2ca.out set value []
data modify block 29999999 3 3007 Text3 set value ""
execute store result score $str.str2ca.len PS.mem run data get storage ps:str str2ca.in
scoreboard players set #str.str2ca.cnt PS.mem 0
scoreboard players set $str.str2ca.suc PS.mem 0

function ps:string/str2ca/initchar
execute if score $str.str2ca.len PS.mem matches 1.. run scoreboard players set $str.str2ca.busy PS.mem 1
execute if score $str.str2ca.len PS.mem matches 1.. run function ps:string/str2ca/sw_on
