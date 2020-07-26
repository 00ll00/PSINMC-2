#as stroke at @s
scoreboard players add #tools.cube.strok.count PS.mem 1
execute if score #tools.cube.hollow PS.mem matches 1 run function ps:tools/cube/stroke_f/s_h
execute if score #tools.cube.hollow PS.mem matches 0 run function ps:tools/cube/stroke_f/s_s