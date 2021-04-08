#as player
execute store result score @s PS.tools.r run data get storage ps:players storage.data.tools.sphere.r

execute store result score @s PS.tools.whd.w run data get storage ps:players storage.data.tools.sphere.whd[0]
execute store result score @s PS.tools.whd.h run data get storage ps:players storage.data.tools.sphere.whd[1]
execute store result score @s PS.tools.whd.d run data get storage ps:players storage.data.tools.sphere.whd[2]

execute store result score @s PS.tools.vx.x run data get storage ps:players storage.data.tools.sphere.vx[0]
execute store result score @s PS.tools.vx.y run data get storage ps:players storage.data.tools.sphere.vx[1]
execute store result score @s PS.tools.vx.z run data get storage ps:players storage.data.tools.sphere.vx[2]
execute store result score @s PS.tools.vy.x run data get storage ps:players storage.data.tools.sphere.vy[0]
execute store result score @s PS.tools.vy.y run data get storage ps:players storage.data.tools.sphere.vy[1]
execute store result score @s PS.tools.vy.z run data get storage ps:players storage.data.tools.sphere.vy[2]
execute store result score @s PS.tools.vz.x run data get storage ps:players storage.data.tools.sphere.vz[0]
execute store result score @s PS.tools.vz.y run data get storage ps:players storage.data.tools.sphere.vz[1]
execute store result score @s PS.tools.vz.z run data get storage ps:players storage.data.tools.sphere.vz[2]

execute as @e[tag=PS.ctrl.gizmo.o,tag=PS.ctrl.sphere,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem += @s PS.tools.vx.x
scoreboard players operation #sphere.hdf.y PS.mem += @s PS.tools.vx.y
scoreboard players operation #sphere.hdf.z PS.mem += @s PS.tools.vx.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem

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

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem += @s PS.tools.vy.x
scoreboard players operation #sphere.hdf.y PS.mem += @s PS.tools.vy.y
scoreboard players operation #sphere.hdf.z PS.mem += @s PS.tools.vy.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem -= @s PS.tools.vy.x
scoreboard players operation #sphere.hdf.y PS.mem -= @s PS.tools.vy.y
scoreboard players operation #sphere.hdf.z PS.mem -= @s PS.tools.vy.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.y-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.y-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.y-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem += @s PS.tools.vz.x
scoreboard players operation #sphere.hdf.y PS.mem += @s PS.tools.vz.y
scoreboard players operation #sphere.hdf.z PS.mem += @s PS.tools.vz.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem

scoreboard players operation #sphere.hdf.x PS.mem = @s PS.focus.r.x1
scoreboard players operation #sphere.hdf.y PS.mem = @s PS.focus.r.y1
scoreboard players operation #sphere.hdf.z PS.mem = @s PS.focus.r.z1
scoreboard players operation #sphere.hdf.x PS.mem -= @s PS.tools.vz.x
scoreboard players operation #sphere.hdf.y PS.mem -= @s PS.tools.vz.y
scoreboard players operation #sphere.hdf.z PS.mem -= @s PS.tools.vz.z
scoreboard players operation #sphere.hdf.x PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.y PS.mem *= $10 PS.const
scoreboard players operation #sphere.hdf.z PS.mem *= $10 PS.const
scoreboard players add #sphere.hdf.x PS.mem 5
scoreboard players add #sphere.hdf.y PS.mem 5
scoreboard players add #sphere.hdf.z PS.mem 5

execute as @e[tag=PS.ctrl.gizmo.z-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #sphere.hdf.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.z-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #sphere.hdf.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.z-,tag=PS.ctrl.sphere,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #sphere.hdf.z PS.mem

team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.x-,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.y-,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.z-,tag=PS.players.belonging]
kill @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.s,tag=PS.players.belonging]