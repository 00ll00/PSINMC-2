#as stroke at @s align xyz
execute if score #tools.cube.whd.w PS.mem matches 1.. run function ps:tools/cube/stroke_r/s_s_x1
execute if score #tools.cube.whd.w PS.mem matches ..-1 run function ps:tools/cube/stroke_r/s_s_x2
execute if score #tools.cube.whd.h PS.mem matches 1.. run function ps:tools/cube/stroke_r/s_s_y1
execute if score #tools.cube.whd.h PS.mem matches ..-1 run function ps:tools/cube/stroke_r/s_s_y2
execute if score #tools.cube.whd.d PS.mem matches 1.. run function ps:tools/cube/stroke_r/s_s_z1
execute if score #tools.cube.whd.d PS.mem matches ..-1 run function ps:tools/cube/stroke_r/s_s_z2

execute if score #tools.cube.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.cube.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air

kill @s