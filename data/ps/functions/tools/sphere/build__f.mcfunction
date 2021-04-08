#as player

execute store result score $math.mat.a.1.1 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.1.1
execute store result score $math.mat.a.1.2 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.1.2
execute store result score $math.mat.a.1.3 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.1.3
execute store result score $math.mat.a.2.1 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.2.1
execute store result score $math.mat.a.2.2 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.2.2
execute store result score $math.mat.a.2.3 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.2.3
execute store result score $math.mat.a.3.1 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.3.1
execute store result score $math.mat.a.3.2 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.3.2
execute store result score $math.mat.a.3.3 PS.mem run data get storage ps:players storage.data.tools.sphere_last.inv.3.3

scoreboard players operation #tools.sphere.whd.w_ PS.mem = #tools.sphere.whd.w PS.mem
scoreboard players operation #tools.sphere.whd.h_ PS.mem = #tools.sphere.whd.h PS.mem
scoreboard players operation #tools.sphere.whd.d_ PS.mem = #tools.sphere.whd.d PS.mem
scoreboard players remove #tools.sphere.whd.w_ PS.mem 1000
scoreboard players remove #tools.sphere.whd.h_ PS.mem 1000
scoreboard players remove #tools.sphere.whd.d_ PS.mem 1000

scoreboard players operation #tools.sphere.outter PS.mem = @s PS.tools.r
scoreboard players operation #tools.sphere.inner PS.mem = @s PS.tools.r
scoreboard players add #tools.sphere.outter PS.mem 1000
scoreboard players operation #tools.sphere.outter PS.mem *= #tools.sphere.outter PS.mem
scoreboard players operation #tools.sphere.inner PS.mem *= #tools.sphere.inner PS.mem

execute as @e[tag=PS.tools.sphere.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/sphere/stroke_f/call