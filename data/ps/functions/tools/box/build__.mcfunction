#as player
scoreboard players set #tools.box.strok.count PS.mem 0

execute store result score #tools.box.whd.w PS.mem run data get storage ps:players storage.data.tools.box_last.whd[0]
execute store result score #tools.box.whd.h PS.mem run data get storage ps:players storage.data.tools.box_last.whd[1]
execute store result score #tools.box.whd.d PS.mem run data get storage ps:players storage.data.tools.box_last.whd[2]
execute store result score #tools.box.hollow PS.mem run data get storage ps:players storage.data.tools.box_last.hollow

execute if data storage ps:players storage.data.tools.box_last{freemode:0b} as @e[tag=PS.tools.box.stroke,tag=PS.players.belonging] at @s run function ps:tools/box/stroke_r/call

execute if score #tools.box.strok.count PS.mem matches 0 run function ps:tools/box/done