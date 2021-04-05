#as player
#execute store result score #tools.cube.det PS.mem run data get storage ps:players storage.data.tools.cube_last.det

execute store result score $math.mat.a.1.1 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.1.1
execute store result score $math.mat.a.1.2 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.1.2
execute store result score $math.mat.a.1.3 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.1.3
execute store result score $math.mat.a.2.1 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.2.1
execute store result score $math.mat.a.2.2 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.2.2
execute store result score $math.mat.a.2.3 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.2.3
execute store result score $math.mat.a.3.1 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.3.1
execute store result score $math.mat.a.3.2 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.3.2
execute store result score $math.mat.a.3.3 PS.mem run data get storage ps:players storage.data.tools.cube_last.adj.3.3

scoreboard players operation #tools.cube.whd.w_ PS.mem = #tools.cube.whd.w PS.mem
scoreboard players operation #tools.cube.whd.h_ PS.mem = #tools.cube.whd.h PS.mem
scoreboard players operation #tools.cube.whd.d_ PS.mem = #tools.cube.whd.d PS.mem
scoreboard players remove #tools.cube.whd.w_ PS.mem 1000
scoreboard players remove #tools.cube.whd.h_ PS.mem 1000
scoreboard players remove #tools.cube.whd.d_ PS.mem 1000

execute as @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/cube/stroke_f/call