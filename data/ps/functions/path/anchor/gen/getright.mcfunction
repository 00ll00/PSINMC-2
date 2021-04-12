#as anchor
#output:
#   $path.gen.x3/y3/z3
#   $path.gen.x4/y4/z4

execute store result score $path.gen.x3 PS.mem run scoreboard players operation $path.gen.x4 PS.mem = @s PS.path.p.x
execute store result score $path.gen.y3 PS.mem run scoreboard players operation $path.gen.y4 PS.mem = @s PS.path.p.y
execute store result score $path.gen.z3 PS.mem run scoreboard players operation $path.gen.z4 PS.mem = @s PS.path.p.z
scoreboard players operation $path.gen.x3 PS.mem += @s PS.path.h1.x
scoreboard players operation $path.gen.y3 PS.mem += @s PS.path.h1.y
scoreboard players operation $path.gen.z3 PS.mem += @s PS.path.h1.z