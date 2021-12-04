data merge block 29999999 3 3007 {Text3:'[{"nbt":"Text3","block":"29999999 3 3007","interpret":true},{"nbt":"id2char.out","storage":"ps:str","interpret":true}]'}

#function getchar/call
data modify storage ps:str str2ca.out append value 0
execute store result storage ps:str str2ca.out[-1] int 1 run scoreboard players get #str.str2ca.now PS.mem

function ps:string/str2ca/initchar
scoreboard players add #str.str2ca.cnt PS.mem 1
execute if score #str.str2ca.cnt PS.mem >= $str.str2ca.len PS.mem run function ps:string/str2ca/fatal