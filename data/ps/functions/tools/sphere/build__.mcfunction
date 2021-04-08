#as player

scoreboard players set #tools.sphere.stroke.count PS.mem 0

execute store result score #tools.sphere.whd.w PS.mem run data get storage ps:players storage.data.tools.sphere_last.whd[0]
execute store result score #tools.sphere.whd.h PS.mem run data get storage ps:players storage.data.tools.sphere_last.whd[1]
execute store result score #tools.sphere.whd.d PS.mem run data get storage ps:players storage.data.tools.sphere_last.whd[2]
execute store result score #tools.sphere.r PS.mem run data get storage ps:players storage.data.tools.sphere_last.r
execute store result score #tools.sphere.hollow PS.mem run data get storage ps:players storage.data.tools.sphere_last.hollow
execute store result score #tools.sphere.rev PS.mem run data get storage ps:players storage.data.tools.sphere_last.rev

execute if data storage ps:players storage.data.tools.sphere_last{freemode:0b} run function ps:tools/sphere/build__r
execute if data storage ps:players storage.data.tools.sphere_last{freemode:1b} run function ps:tools/sphere/build__f

execute if score #tools.sphere.stroke.count PS.mem matches 0 run function ps:tools/sphere/done