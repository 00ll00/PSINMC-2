#as player

scoreboard players set #tools.cube.revx PS.mem 0
scoreboard players set #tools.cube.revy PS.mem 0
scoreboard players set #tools.cube.revz PS.mem 0
execute store success score #tools.cube.revx PS.mem if score #tools.cube.whd.w PS.mem matches ..-1 run scoreboard players operation #tools.cube.whd.w PS.mem *= $-1 PS.const
execute store success score #tools.cube.revy PS.mem if score #tools.cube.whd.h PS.mem matches ..-1 run scoreboard players operation #tools.cube.whd.h PS.mem *= $-1 PS.const
execute store success score #tools.cube.revz PS.mem if score #tools.cube.whd.d PS.mem matches ..-1 run scoreboard players operation #tools.cube.whd.d PS.mem *= $-1 PS.const

execute as @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,scores={PS.main.life=1}] at @s run function ps:tools/cube/stroke_r/call