#as marker
execute if score $focus.dz PS.mem matches 0.. run function ps:focus/block/z/2
execute if score $focus.dz PS.mem matches ..-1 run function ps:focus/block/z/3