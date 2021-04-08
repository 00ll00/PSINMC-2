#as stroke at new place align xyz
scoreboard players operation #tools.sphere.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.sphere.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.sphere.p.z PS.mem = @s PS.tools.p.z
scoreboard players remove #tools.sphere.p.y PS.mem 1000
scoreboard players remove #tools.sphere.p.z PS.mem 1000


execute if score #tools.sphere.hollow PS.mem matches 1 run function ps:tools/sphere/stroke_f/check_h
execute if score #tools.sphere.hollow PS.mem matches 0 run function ps:tools/sphere/stroke_f/check_s

execute if score #sphere.temp.reg PS.mem matches 1 run function ps:tools/sphere/stroke_f/new
