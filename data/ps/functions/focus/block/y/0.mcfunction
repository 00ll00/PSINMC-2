#as marker
execute if score #focus.ay PS.mem >= #focus.az PS.mem run function ps:focus/block/y/1
execute if score $focus.g PS.mem matches 0 run function ps:focus/block/z/1