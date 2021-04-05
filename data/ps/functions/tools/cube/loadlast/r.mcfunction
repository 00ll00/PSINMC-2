#as player
execute store result score @s PS.tools.whd.w run data get storage ps:players storage.data.tools.cube_last.whd[0]
execute store result score @s PS.tools.whd.h run data get storage ps:players storage.data.tools.cube_last.whd[1]
execute store result score @s PS.tools.whd.d run data get storage ps:players storage.data.tools.cube_last.whd[2]

execute store result score #tools.cube.x2 PS.mem run scoreboard players operation @s PS.focus.r.x2 += @s PS.tools.whd.w
execute store result score #tools.cube.y2 PS.mem run scoreboard players operation @s PS.focus.r.y2 += @s PS.tools.whd.h
execute store result score #tools.cube.z2 PS.mem run scoreboard players operation @s PS.focus.r.z2 += @s PS.tools.whd.d

scoreboard players operation #tools.cube.x2 PS.mem *= $10 PS.const
scoreboard players operation #tools.cube.y2 PS.mem *= $10 PS.const
scoreboard players operation #tools.cube.z2 PS.mem *= $10 PS.const
scoreboard players add #tools.cube.x2 PS.mem 5
scoreboard players add #tools.cube.y2 PS.mem 5
scoreboard players add #tools.cube.z2 PS.mem 5

execute as @e[tag=PS.ctrl.gizmo,tag=!PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos
execute as @e[tag=PS.ctrl.gizmo.m.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.x2 PS.mem
execute as @e[tag=PS.ctrl.gizmo.m.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.y2 PS.mem
execute as @e[tag=PS.ctrl.gizmo.m.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.z2 PS.mem

scoreboard players set @s PS.tools.freemd 0