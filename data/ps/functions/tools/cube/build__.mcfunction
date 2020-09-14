#as player

scoreboard players set #tools.cube.stroke.count PS.mem 0

execute store result score #tools.cube.whd.w PS.mem run data get storage ps:players storage.data.tools.cube_last.whd[0]
execute store result score #tools.cube.whd.h PS.mem run data get storage ps:players storage.data.tools.cube_last.whd[1]
execute store result score #tools.cube.whd.d PS.mem run data get storage ps:players storage.data.tools.cube_last.whd[2]
execute store result score #tools.cube.hollow PS.mem run data get storage ps:players storage.data.tools.cube_last.hollow
execute store result score #tools.cube.rev PS.mem run data get storage ps:players storage.data.tools.cube_last.rev

execute if data storage ps:players storage.data.tools.cube_last{freemode:0b} as @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging] at @s run function ps:tools/cube/stroke_r/call

execute if data storage ps:players storage.data.tools.cube_last{freemode:1b} run function ps:tools/cube/build__f
execute if data storage ps:players storage.data.tools.cube_last{freemode:1b} as @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/cube/stroke_f/call

execute if score #tools.cube.stroke.count PS.mem matches 0 run function ps:tools/cube/done