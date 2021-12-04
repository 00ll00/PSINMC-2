#input:
#   storage ps:str split.in
#   $str.split.char
#output:
#   storage ps:str split.out
#   $str.split.cnt

data modify storage ps:str split.out set value [[]]
scoreboard players set $str.split.cnt PS.mem 1

execute if data storage ps:str split.in[0] run function ps:string/split/recu