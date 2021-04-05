#as player

execute store result score #tools.cube.revx PS.mem run data get storage ps:players storage.data.tools.cube_last.revx
execute store result score #tools.cube.revy PS.mem run data get storage ps:players storage.data.tools.cube_last.revy
execute store result score #tools.cube.revz PS.mem run data get storage ps:players storage.data.tools.cube_last.revz

execute as @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/cube/stroke_r/call