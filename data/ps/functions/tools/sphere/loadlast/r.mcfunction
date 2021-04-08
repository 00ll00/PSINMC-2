#as player
execute store result score @s PS.tools.r run data get storage ps:players storage.data.tools.sphere.r
execute store result score @s PS.tools.whd.w run data get storage ps:players storage.data.tools.sphere.whd[0]
execute store result score @s PS.tools.whd.h run data get storage ps:players storage.data.tools.sphere.whd[1]
execute store result score @s PS.tools.whd.d run data get storage ps:players storage.data.tools.sphere.whd[2]

execute as @e[tag=PS.ctrl.gizmo.r,tag=PS.ctrl.sphere,tag=PS.players.belonging] run data modify entity @s Pos set from entity @e[tag=PS.ctrl.gizmo.o,tag=PS.ctrl.sphere,tag=PS.players.belonging,limit=1] Pos

execute store result score #sphere.load.temp PS.mem run scoreboard players operation @s PS.focus.r.x2 += @s PS.tools.whd.w
scoreboard players operation #sphere.load.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.load.temp PS.mem
execute store result score #sphere.load.temp PS.mem run scoreboard players operation @s PS.focus.r.y2 += @s PS.tools.whd.h
scoreboard players operation #sphere.load.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.load.temp PS.mem
execute store result score #sphere.load.temp PS.mem run scoreboard players operation @s PS.focus.r.z2 += @s PS.tools.whd.d
scoreboard players operation #sphere.load.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.r PS.mem = @s PS.tools.r
scoreboard players operation #sphere.load.r PS.mem *= $10 PS.const

scoreboard players operation #sphere.load.rx PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.load.ry PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.load.rz PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.load.rx PS.mem *= $10 PS.const
scoreboard players operation #sphere.load.ry PS.mem *= $10 PS.const
scoreboard players operation #sphere.load.rz PS.mem *= $10 PS.const

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.rx PS.mem
scoreboard players operation #sphere.load.temp PS.mem += #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.ry PS.mem
scoreboard players operation #sphere.load.temp PS.mem += #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.rz PS.mem
scoreboard players operation #sphere.load.temp PS.mem += #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.rx PS.mem
scoreboard players operation #sphere.load.temp PS.mem -= #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.x-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.ry PS.mem
scoreboard players operation #sphere.load.temp PS.mem -= #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.y-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.load.temp PS.mem

scoreboard players operation #sphere.load.temp PS.mem = #sphere.load.rz PS.mem
scoreboard players operation #sphere.load.temp PS.mem -= #sphere.load.r PS.mem
scoreboard players add #sphere.load.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.z-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.load.temp PS.mem