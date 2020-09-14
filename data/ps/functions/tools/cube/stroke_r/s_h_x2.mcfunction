#as stroke at @s align xyz
scoreboard players operation #tools.cube.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.cube.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.cube.p.z PS.mem = @s PS.tools.p.z
scoreboard players remove #tools.cube.p.x PS.mem 1

scoreboard players set #tools.cube.s.temp PS.mem 0
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.x PS.mem matches 0
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.x PS.mem = #tools.cube.whd.w PS.mem
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.y PS.mem matches 0
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.y PS.mem = #tools.cube.whd.h PS.mem
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.z PS.mem matches 0
execute if score #tools.cube.s.temp PS.mem matches 0 store success score #tools.cube.s.temp PS.mem if score #tools.cube.p.z PS.mem = #tools.cube.whd.d PS.mem

execute if score #tools.cube.s.temp PS.mem matches 1 if score #tools.cube.p.x PS.mem >= #tools.cube.whd.w PS.mem positioned ~-1 ~ ~ unless entity @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,dx=0,dy=0,dz=0] run function ps:tools/cube/stroke_r/new
