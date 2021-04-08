#as stroke at new place align xyz
scoreboard players operation #tools.sphere.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.sphere.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.sphere.p.z PS.mem = @s PS.tools.p.z
scoreboard players remove #tools.sphere.p.x PS.mem 1
scoreboard players add #tools.sphere.p.z PS.mem 1

scoreboard players operation #sphere.temp PS.mem = #tools.sphere.p.x PS.mem
scoreboard players operation #sphere.temp PS.mem *= #sphere.temp PS.mem
scoreboard players operation #sphere.temp.dist PS.mem = #sphere.temp PS.mem
scoreboard players operation #sphere.temp PS.mem = #tools.sphere.p.y PS.mem
scoreboard players operation #sphere.temp PS.mem *= #sphere.temp PS.mem
scoreboard players operation #sphere.temp.dist PS.mem += #sphere.temp PS.mem
scoreboard players operation #sphere.temp PS.mem = #tools.sphere.p.z PS.mem
scoreboard players operation #sphere.temp PS.mem *= #sphere.temp PS.mem
scoreboard players operation #sphere.temp.dist PS.mem += #sphere.temp PS.mem


execute if score #tools.sphere.hollow PS.mem matches 1 run function ps:tools/sphere/stroke_r/check_h
execute if score #tools.sphere.hollow PS.mem matches 0 run function ps:tools/sphere/stroke_r/check_s

execute if score #sphere.temp.reg PS.mem matches 1 run function ps:tools/sphere/stroke_r/new
