#as stroke at @s
scoreboard players add #tools.cube.stroke.count PS.mem 1
scoreboard players set #tools.cube.stroke.new PS.mem 0

execute if score #tools.cube.rev PS.mem matches 0 if block ~ ~ ~ #ps:air run setblock ~ ~ ~ minecraft:white_concrete
execute if score #tools.cube.rev PS.mem matches 1 if block ~ ~ ~ minecraft:white_concrete run setblock ~ ~ ~ minecraft:air
#TODO change needed
execute if score #tools.cube.stroke.new PS.mem matches 0 run function ps:tools/cube/stroke_f/call1
execute if score #tools.cube.stroke.new PS.mem matches 0 run function ps:tools/cube/stroke_f/call2
execute if score #tools.cube.stroke.new PS.mem matches 0 run function ps:tools/cube/stroke_f/call3