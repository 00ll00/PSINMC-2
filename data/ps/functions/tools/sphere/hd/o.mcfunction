#as player
function ps:focus/record1
function ps:focus/record2

execute as @e[tag=PS.ctrl.sphere,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

execute store result score #sphere.hd.temp PS.mem run scoreboard players operation @s PS.focus.r.x2 += @s PS.tools.whd.w
scoreboard players operation #sphere.hd.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem
execute store result score #sphere.hd.temp PS.mem run scoreboard players operation @s PS.focus.r.y2 += @s PS.tools.whd.h
scoreboard players operation #sphere.hd.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem
execute store result score #sphere.hd.temp PS.mem run scoreboard players operation @s PS.focus.r.z2 += @s PS.tools.whd.d
scoreboard players operation #sphere.hd.temp PS.mem *= $10 PS.const
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.r PS.mem = @s PS.tools.r
scoreboard players operation #sphere.hd.r PS.mem *= $10 PS.const

scoreboard players operation #sphere.hd.rx PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hd.ry PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hd.rz PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hd.rx PS.mem *= $10 PS.const
scoreboard players operation #sphere.hd.ry PS.mem *= $10 PS.const
scoreboard players operation #sphere.hd.rz PS.mem *= $10 PS.const

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.rx PS.mem
scoreboard players operation #sphere.hd.temp PS.mem += #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.ry PS.mem
scoreboard players operation #sphere.hd.temp PS.mem += #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.rz PS.mem
scoreboard players operation #sphere.hd.temp PS.mem += #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.rx PS.mem
scoreboard players operation #sphere.hd.temp PS.mem -= #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.x-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.ry PS.mem
scoreboard players operation #sphere.hd.temp PS.mem -= #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.y-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem

scoreboard players operation #sphere.hd.temp PS.mem = #sphere.hd.rz PS.mem
scoreboard players operation #sphere.hd.temp PS.mem -= #sphere.hd.r PS.mem
scoreboard players add #sphere.hd.temp PS.mem 5
execute as @e[tag=PS.ctrl.gizmo.z-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hd.temp PS.mem