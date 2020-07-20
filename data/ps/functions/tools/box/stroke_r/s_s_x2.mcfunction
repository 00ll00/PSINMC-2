#as stroke
scoreboard players operation #tools.box.p.x PS.mem = @s PS.tools.p.x
scoreboard players operation #tools.box.p.y PS.mem = @s PS.tools.p.y
scoreboard players operation #tools.box.p.z PS.mem = @s PS.tools.p.z
scoreboard players remove #tools.box.p.x PS.mem 1

execute if score #tools.box.s.temp PS.mem matches 1 if score #tools.box.p.x PS.mem >= #tools.box.whd.w PS.mem positioned ~-1 ~ ~ unless entity @e[tag=PS.tools.box.stroke,tag=PS.players.belonging,dx=0,dy=0,dz=0] run function ps:tools/box/stroke_new
