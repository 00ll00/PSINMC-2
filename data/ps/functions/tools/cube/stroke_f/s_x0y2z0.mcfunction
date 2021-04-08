#as stroke at new place align xyz
scoreboard players operation #tools.cube.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.cube.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.cube.p.z PS.mem = @s PS.tools.p.z
scoreboard players remove #tools.cube.p.y PS.mem 1000

scoreboard players operation $math.mat.b.1.1 PS.mem = #tools.cube.p.x PS.mem
scoreboard players operation $math.mat.b.2.1 PS.mem = #tools.cube.p.y PS.mem
scoreboard players operation $math.mat.b.3.1 PS.mem = #tools.cube.p.z PS.mem
function ps:math/mat/multiplication/33x31

execute if score #tools.cube.hollow PS.mem matches 1 run function ps:tools/cube/stroke_f/check_h
execute if score #tools.cube.hollow PS.mem matches 0 run function ps:tools/cube/stroke_f/check_s

execute if score #cube.temp.reg PS.mem matches 1 run function ps:tools/cube/stroke_f/new
