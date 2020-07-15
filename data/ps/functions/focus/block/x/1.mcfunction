#as marker
execute if score #focus.dx PS.mem matches 0.. run function ps:focus/block/x/2
execute if score #focus.dx PS.mem matches ..-1 run function ps:focus/block/x/3