#as player
execute positioned ^ ^-.1 ^ store success score $focus.g PS.mem run tag @e[tag=PS.path.p,distance=...75,limit=1,sort=nearest] add PS.vector.focused
scoreboard players add #focus.dist PS.mem 1
execute if score #focus.dist PS.mem <= #focus.dist.max PS.mem if score $focus.g PS.mem matches 0 positioned ^ ^ ^.5 run function ps:focus/vector/recu
