#as anchor

tag @s remove PS.path.working
kill @e[tag=PS.path.h,tag=PS.path.working]

scoreboard players operation #path.anchor.del.temp PS.mem = @s PS.path.a.id
execute as @e[tag=PS.path.p,tag=!PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.del.temp PS.mem run kill @s
scoreboard players remove #path.anchor.del.temp PS.mem 1
execute as @e[tag=PS.path.p,tag=!PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.del.temp PS.mem run kill @s

execute as @e[tag=PS.path,tag=PS.path.working] if score @s PS.path.a.id > #path.anchor.del.temp PS.mem run scoreboard players remove @s PS.path.a.id 1
scoreboard players add #path.anchor.del.temp PS.mem 1
execute if score #path.anchor.del.temp PS.mem matches 2.. as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.del.temp PS.mem run function ps:path/anchor/gen/h1

kill @s

function ps:path/refresha