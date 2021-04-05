#as stroke at @s align xyz
execute if score #tools.cube.revx PS.mem matches 0 positioned ~1 ~ ~ run function ps:tools/cube/stroke_r/s_s_x
execute if score #tools.cube.revx PS.mem matches 1 positioned ~-1 ~ ~ run function ps:tools/cube/stroke_r/s_s_x
execute if score #tools.cube.revy PS.mem matches 0 positioned ~ ~1 ~ run function ps:tools/cube/stroke_r/s_s_y
execute if score #tools.cube.revy PS.mem matches 1 positioned ~ ~-1 ~ run function ps:tools/cube/stroke_r/s_s_y
execute if score #tools.cube.revz PS.mem matches 0 positioned ~ ~ ~1 run function ps:tools/cube/stroke_r/s_s_z
execute if score #tools.cube.revz PS.mem matches 1 positioned ~ ~ ~-1 run function ps:tools/cube/stroke_r/s_s_z

execute if score #tools.cube.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.cube.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air

kill @s