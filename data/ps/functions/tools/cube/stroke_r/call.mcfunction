#as stroke at @s
scoreboard players add #tools.cube.stroke.count PS.mem 1

execute if score #tools.cube.hollow PS.mem matches 1 align xyz run function ps:tools/cube/stroke_r/s_h
execute if score #tools.cube.hollow PS.mem matches 0 align xyz run function ps:tools/cube/stroke_r/s_s