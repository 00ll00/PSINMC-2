#as player
#output: $path.lasta.id : get 0 while working path is empty

scoreboard players set $path.lasta.id PS.mem 0
execute as @e[tag=PS.path.a,tag=PS.path.working] run scoreboard players operation $path.lasta.id PS.mem > @s PS.path.a.id