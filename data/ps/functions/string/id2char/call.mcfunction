#auto gen
#input: $str.id2char.in
#output: storage ps:str id2char.out

execute if score $str.id2char.in PS.mem matches 0..47 run function ps:string/id2char/0
execute if score $str.id2char.in PS.mem matches 48..95 run function ps:string/id2char/1
