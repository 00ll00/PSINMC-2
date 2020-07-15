#as player
execute positioned ^ ^-.1 ^ store success score $focus.g PS.mem run tag @e[tag=PS.menu.focusable,tag=PS.players.belonging,distance=...75,limit=1,sort=nearest] add PS.menu.focused_
scoreboard players add #focus.dist PS.mem 1
execute if score #focus.dist PS.mem <= $focus.menu.dist.max PS.sys if score $focus.got PS.mem matches 0 positioned ^ ^ ^.5 run function ps:focus/menu/recu
