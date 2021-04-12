#as anchor

execute as @e[tag=PS.path.h,tag=PS.path.working] if score @s PS.path.a.id = @s PS.path.a.id run kill @s

scoreboard players operation #path.anchor.del.temp PS.mem = @s PS.path.a.id
scoreboard players remove #path.anchor.del.temp PS.mem 1
execute as @e[tag=PS.path.p,tag=!PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.del.temp PS.mem run kill @s

tag @s remove PS.path.working
execute as @e[tag=PS.path,tag=PS.path.working] if score @s PS.path.a.id > #path.anchor.del.temp PS.mem run scoreboard players remove @s PS.path.a.id 1
execute as @e[tag=PS.path,tag=PS.path.working] if score @s PS.path.a.id = @s PS.path.a.id run function ps:path/anchor/gen/h1

kill @s

function ps:path/refresha