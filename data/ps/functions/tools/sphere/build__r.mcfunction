#as player

scoreboard players operation #tools.sphere.outter PS.mem = @s PS.tools.r
scoreboard players operation #tools.sphere.inner PS.mem = @s PS.tools.r
scoreboard players add #tools.sphere.outter PS.mem 1
scoreboard players operation #tools.sphere.outter PS.mem *= #tools.sphere.outter PS.mem
scoreboard players operation #tools.sphere.inner PS.mem *= #tools.sphere.inner PS.mem

execute as @e[tag=PS.tools.sphere.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/sphere/stroke_r/call