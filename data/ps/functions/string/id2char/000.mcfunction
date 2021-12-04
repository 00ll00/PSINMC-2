execute if score $str.id2char.in PS.mem matches 0 run data modify storage ps:str id2char.out set value "{\"text\": \" \"}"
execute if score $str.id2char.in PS.mem matches 1 run data modify storage ps:str id2char.out set value "{\"text\": \"!\"}"
execute if score $str.id2char.in PS.mem matches 2 run data modify storage ps:str id2char.out set value "{\"text\": \"#\"}"
execute if score $str.id2char.in PS.mem matches 3 run data modify storage ps:str id2char.out set value "{\"text\": \"$\"}"
