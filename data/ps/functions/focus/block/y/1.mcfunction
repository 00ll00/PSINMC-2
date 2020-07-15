#as marker
execute if score #focus.dy PS.mem matches 0.. run function ps:focus/block/y/2
execute if score #focus.dy PS.mem matches ..-1 run function ps:focus/block/y/3