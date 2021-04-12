#as player at player
#output: $focus.g

tag @e[tag=PS.vector.focused] remove PS.vector.focused
scoreboard players set $focus.g PS.mem 1
scoreboard players set #focus.dist PS.mem 0
execute anchored eyes positioned ^ ^ ^ run function ps:focus/vector/recu
tag @e[tag=PS.vector.focused_] remove PS.vector.focused_