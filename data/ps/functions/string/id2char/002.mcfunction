execute if score $str.id2char.in PS.mem matches 8 run data modify storage ps:str id2char.out set value "{\"text\": \")\"}"
execute if score $str.id2char.in PS.mem matches 9 run data modify storage ps:str id2char.out set value "{\"text\": \"*\"}"
execute if score $str.id2char.in PS.mem matches 10 run data modify storage ps:str id2char.out set value "{\"text\": \"+\"}"
execute if score $str.id2char.in PS.mem matches 11 run data modify storage ps:str id2char.out set value "{\"text\": \",\"}"
