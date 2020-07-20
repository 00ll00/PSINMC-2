#as stroke at @s
execute if score #tools.box.whd.w PS.mem matches 1.. run function ps:tools/box/stroke_r/s_h_x1
execute if score #tools.box.whd.w PS.mem matches ..-1 run function ps:tools/box/stroke_r/s_h_x2
execute if score #tools.box.whd.h PS.mem matches 1.. run function ps:tools/box/stroke_r/s_h_y1
execute if score #tools.box.whd.h PS.mem matches ..-1 run function ps:tools/box/stroke_r/s_h_y2
execute if score #tools.box.whd.d PS.mem matches 1.. run function ps:tools/box/stroke_r/s_h_z1
execute if score #tools.box.whd.d PS.mem matches ..-1 run function ps:tools/box/stroke_r/s_h_z2

execute if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
kill @s