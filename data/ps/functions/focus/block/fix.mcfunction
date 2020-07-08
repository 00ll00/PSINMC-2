#as marker
execute if score $focus.f PS.mem matches 1..2 run function ps:focus/block/x/4
execute if score $focus.f PS.mem matches 3..4 run function ps:focus/block/y/4
execute if score $focus.f PS.mem matches 5..6 run function ps:focus/block/z/4