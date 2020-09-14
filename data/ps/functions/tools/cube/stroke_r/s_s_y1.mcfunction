#as stroke at @s align xyz
scoreboard players operation #tools.cube.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.cube.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.cube.p.z PS.mem = @s PS.tools.p.z
scoreboard players add #tools.cube.p.y PS.mem 1

execute if score #tools.cube.p.y PS.mem <= #tools.cube.whd.h PS.mem positioned ~ ~1 ~ unless entity @e[tag=PS.tools.cube.stroke,tag=PS.players.belonging,dx=0,dy=0,dz=0] run function ps:tools/cube/stroke_r/new
