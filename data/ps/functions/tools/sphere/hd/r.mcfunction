#as player
function ps:focus/record2
function ps:tools/com/getwhd
function ps:tools/com/getr

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

data modify entity @e[tag=PS.ctrl.gizmo.s,tag=PS.ctrl.sphere,tag=PS.players.belonging,limit=1] Pos set from entity 0-0110-5053-0-1 Pos