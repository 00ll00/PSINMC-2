#as anchor
#output:
#   $path.gen.x1/y1/z1
#   $path.gen.x2/y2/z2

execute store result score $path.gen.x1 PS.mem run scoreboard players operation $path.gen.x2 PS.mem = @s PS.path.p.x
execute store result score $path.gen.y1 PS.mem run scoreboard players operation $path.gen.y2 PS.mem = @s PS.path.p.y
execute store result score $path.gen.z1 PS.mem run scoreboard players operation $path.gen.z2 PS.mem = @s PS.path.p.z
scoreboard players operation $path.gen.x2 PS.mem += @s PS.path.h2.x
scoreboard players operation $path.gen.y2 PS.mem += @s PS.path.h2.y
scoreboard players operation $path.gen.z2 PS.mem += @s PS.path.h2.z