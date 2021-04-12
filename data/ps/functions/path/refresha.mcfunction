#as player

function ps:path/lastanchor
tag @e[tag=PS.path.working,tag=PS.path.a] remove PS.path.start
tag @e[tag=PS.path.working,tag=PS.path.a] remove PS.path.end
execute as @e[tag=PS.path.working,tag=PS.path.a] run function ps:path/anchor/setbody
execute as @e[tag=PS.path.working,tag=PS.path.a] if score @s PS.path.a.id = $path.lasta.id PS.mem run function ps:path/anchor/setend
execute as @e[tag=PS.path.working,tag=PS.path.a] if score @s PS.path.a.id matches 1 run function ps:path/anchor/setstart