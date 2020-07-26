#as stroke at @s
execute as @s[tag=PS.tools.cube.stroke.x] run function ps:tools/cube/stroke_f/s_h_x
execute as @s[tag=PS.tools.cube.stroke.y] run function ps:tools/cube/stroke_f/s_h_y
execute as @s[tag=PS.tools.cube.stroke.z] run function ps:tools/cube/stroke_f/s_h_z

execute if score #tools.cube.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.cube.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air

kill @s