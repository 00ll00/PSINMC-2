#as anchor

scoreboard players operation #anchor.refhdl.temp PS.mem = @s PS.path.p.x
execute store result entity @e[tag=PS.path.h2,tag=PS.path.working,limit=1] Pos[0] double 1 run scoreboard players operation #anchor.refhdl.temp PS.mem += @s PS.path.h2.x
scoreboard players operation #anchor.refhdl.temp PS.mem = @s PS.path.p.y
execute store result entity @e[tag=PS.path.h2,tag=PS.path.working,limit=1] Pos[1] double 1 run scoreboard players operation #anchor.refhdl.temp PS.mem += @s PS.path.h2.y
scoreboard players operation #anchor.refhdl.temp PS.mem = @s PS.path.p.z
execute store result entity @e[tag=PS.path.h2,tag=PS.path.working,limit=1] Pos[2] double 1 run scoreboard players operation #anchor.refhdl.temp PS.mem += @s PS.path.h2.z
execute as @e[tag=PS.path.h2,tag=PS.path.working,limit=1] at @s run tp @s ~.5 ~.5 ~.5