#as player
scoreboard players set #tools.box.strok.count PS.mem 0
execute store result score #tools.box.freemod PS.mem run data get storage ps:players storage.data.tools.box.freemod
execute store result score #tools.box.whd.w PS.mem run data get storage ps:players storage.data.tools.box.whd[0]
execute store result score #tools.box.whd.h PS.mem run data get storage ps:players storage.data.tools.box.whd[1]
execute store result score #tools.box.whd.d PS.mem run data get storage ps:players storage.data.tools.box.whd[2]

execute if data storage ps:players storage.data.tools.box{freemod:0b} as @e[tag=PS.tools.box.stroke,tag=PS.players.belonging] at @s run function ps:tools/box/stroke_r