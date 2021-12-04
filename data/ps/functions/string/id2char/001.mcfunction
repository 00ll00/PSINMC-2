execute if score $str.id2char.in PS.mem matches 4 run data modify storage ps:str id2char.out set value "{\"text\": \"%\"}"
execute if score $str.id2char.in PS.mem matches 5 run data modify storage ps:str id2char.out set value "{\"text\": \"&\"}"
execute if score $str.id2char.in PS.mem matches 6 run data modify storage ps:str id2char.out set value "{\"text\": \"'\"}"
execute if score $str.id2char.in PS.mem matches 7 run data modify storage ps:str id2char.out set value "{\"text\": \"(\"}"
