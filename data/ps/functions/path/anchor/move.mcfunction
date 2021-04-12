#as anchor
#input: $anchor.mv.x/y/z

execute store result entity @s Pos[0] double 1 run scoreboard players operation @s PS.path.p.x = $anchor.mv.x PS.mem
execute store result entity @s Pos[1] double 1 run scoreboard players operation @s PS.path.p.y = $anchor.mv.y PS.mem
execute store result entity @s Pos[2] double 1 run scoreboard players operation @s PS.path.p.z = $anchor.mv.z PS.mem

execute at @s run tp @s ~.5 ~.5 ~.5