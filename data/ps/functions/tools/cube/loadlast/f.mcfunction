#as player
#TODO complete it
execute store result score @s PS.tools.vx.x run data get storage ps:players storage.data.tools.cube_last.vx[0]
execute store result score @s PS.tools.vx.y run data get storage ps:players storage.data.tools.cube_last.vx[1]
execute store result score @s PS.tools.vx.z run data get storage ps:players storage.data.tools.cube_last.vx[2]
execute store result score @s PS.tools.vy.x run data get storage ps:players storage.data.tools.cube_last.vy[0]
execute store result score @s PS.tools.vy.y run data get storage ps:players storage.data.tools.cube_last.vy[1]
execute store result score @s PS.tools.vy.z run data get storage ps:players storage.data.tools.cube_last.vy[2]
execute store result score @s PS.tools.vz.x run data get storage ps:players storage.data.tools.cube_last.vz[0]
execute store result score @s PS.tools.vz.y run data get storage ps:players storage.data.tools.cube_last.vz[1]
execute store result score @s PS.tools.vz.z run data get storage ps:players storage.data.tools.cube_last.vz[2]

execute store result score #tools.cube.y.x PS.mem store result score #tools.cube.z.x PS.mem run scoreboard players operation #tools.cube.x.x PS.mem = #tools.cube.rx PS.mem
execute store result score #tools.cube.y.y PS.mem store result score #tools.cube.z.y PS.mem run scoreboard players operation #tools.cube.x.y PS.mem = #tools.cube.ry PS.mem
execute store result score #tools.cube.y.z PS.mem store result score #tools.cube.z.z PS.mem run scoreboard players operation #tools.cube.x.z PS.mem = #tools.cube.rz PS.mem
execute store result score #tools.cube.xy.x PS.mem store result score #tools.cube.xz.x PS.mem run scoreboard players operation #tools.cube.x.x PS.mem += #tools.cube.vx.x PS.mem
execute store result score #tools.cube.xy.y PS.mem store result score #tools.cube.xz.y PS.mem run scoreboard players operation #tools.cube.x.y PS.mem += #tools.cube.vx.y PS.mem
execute store result score #tools.cube.xy.z PS.mem store result score #tools.cube.xz.z PS.mem run scoreboard players operation #tools.cube.x.z PS.mem += #tools.cube.vx.z PS.mem

execute store result score #tools.cube.xyz.x PS.mem run scoreboard players operation #tools.cube.xy.x PS.mem += #tools.cube.vy.x PS.mem
execute store result score #tools.cube.xyz.y PS.mem run scoreboard players operation #tools.cube.xy.y PS.mem += #tools.cube.vy.y PS.mem
execute store result score #tools.cube.xyz.z PS.mem run scoreboard players operation #tools.cube.xy.z PS.mem += #tools.cube.vy.z PS.mem

scoreboard players operation #tools.cube.xyz.x PS.mem += #tools.cube.vz.x PS.mem
scoreboard players operation #tools.cube.xyz.y PS.mem += #tools.cube.vz.y PS.mem
scoreboard players operation #tools.cube.xyz.z PS.mem += #tools.cube.vz.z PS.mem

scoreboard players operation #tools.cube.xz.x PS.mem += #tools.cube.vz.x PS.mem
scoreboard players operation #tools.cube.xz.y PS.mem += #tools.cube.vz.y PS.mem
scoreboard players operation #tools.cube.xz.z PS.mem += #tools.cube.vz.z PS.mem

execute store result score #tools.cube.yz.x PS.mem run scoreboard players operation #tools.cube.y.x PS.mem += #tools.cube.vy.x PS.mem
execute store result score #tools.cube.yz.y PS.mem run scoreboard players operation #tools.cube.y.y PS.mem += #tools.cube.vy.y PS.mem
execute store result score #tools.cube.yz.z PS.mem run scoreboard players operation #tools.cube.y.z PS.mem += #tools.cube.vy.z PS.mem

scoreboard players operation #tools.cube.yz.x PS.mem += #tools.cube.vz.x PS.mem
scoreboard players operation #tools.cube.yz.y PS.mem += #tools.cube.vz.y PS.mem
scoreboard players operation #tools.cube.yz.z PS.mem += #tools.cube.vz.z PS.mem

scoreboard players operation #tools.cube.z.x PS.mem += #tools.cube.vz.x PS.mem
scoreboard players operation #tools.cube.z.y PS.mem += #tools.cube.vz.y PS.mem
scoreboard players operation #tools.cube.z.z PS.mem += #tools.cube.vz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.x.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.x.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.x.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.y.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.y.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.y.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.z.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.z.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.z.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.xy.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.xy.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.xy.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.xz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.xz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.xz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.yz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.yz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.yz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #tools.cube.xyz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #tools.cube.xyz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #tools.cube.xyz.z PS.mem