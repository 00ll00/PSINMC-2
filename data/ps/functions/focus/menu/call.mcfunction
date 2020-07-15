#as player
#output: $focus.g
scoreboard players set #focus.dist PS.mem 0
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.2 ~ run function ps:focus/menu/recu
execute if entity @e[tag=PS.menu.focused_,tag=!PS.menu.focused,tag=PS.players.belonging] run function ps:focus/menu/mmevent
tag @e[tag=PS.menu.focused_] remove PS.menu.focused_