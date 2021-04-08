#as player
function ps:tools/com/getvx
function ps:tools/com/getvw

execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem -= @s PS.tools.vx.x
scoreboard players operation #sphere.hdf.y PS.mem -= @s PS.tools.vx.y
scoreboard players operation #sphere.hdf.z PS.mem -= @s PS.tools.vx.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.x-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.x-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.x-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem