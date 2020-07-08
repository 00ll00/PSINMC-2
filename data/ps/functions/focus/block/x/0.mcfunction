#as marker
execute if score $focus.ax PS.mem >= $focus.ay PS.mem if score $focus.ax PS.mem >= $focus.az PS.mem run function ps:focus/block/x/1
execute if score $focus.g PS.mem matches 0 run function ps:focus/block/y/0