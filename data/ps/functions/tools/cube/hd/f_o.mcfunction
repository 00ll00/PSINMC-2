#as player
function ps:focus/record1
function ps:tools/cube/hd/getf

execute as @e[tag=PS.ctrl.gizmo.o,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

execute store result score #cube.hdf.y.x PS.mem store result score #cube.hdf.z.x PS.mem run scoreboard players operation #cube.hdf.x.x PS.mem = #cube.hdf.rx PS.mem
execute store result score #cube.hdf.y.y PS.mem store result score #cube.hdf.z.y PS.mem run scoreboard players operation #cube.hdf.x.y PS.mem = #cube.hdf.ry PS.mem
execute store result score #cube.hdf.y.z PS.mem store result score #cube.hdf.z.z PS.mem run scoreboard players operation #cube.hdf.x.z PS.mem = #cube.hdf.rz PS.mem
execute store result score #cube.hdf.xy.x PS.mem store result score #cube.hdf.xz.x PS.mem run scoreboard players operation #cube.hdf.x.x PS.mem += #cube.hdf.vx.x PS.mem
execute store result score #cube.hdf.xy.y PS.mem store result score #cube.hdf.xz.y PS.mem run scoreboard players operation #cube.hdf.x.y PS.mem += #cube.hdf.vx.y PS.mem
execute store result score #cube.hdf.xy.z PS.mem store result score #cube.hdf.xz.z PS.mem run scoreboard players operation #cube.hdf.x.z PS.mem += #cube.hdf.vx.z PS.mem

execute store result score #cube.hdf.xyz.x PS.mem run scoreboard players operation #cube.hdf.xy.x PS.mem += #cube.hdf.vy.x PS.mem
execute store result score #cube.hdf.xyz.y PS.mem run scoreboard players operation #cube.hdf.xy.y PS.mem += #cube.hdf.vy.y PS.mem
execute store result score #cube.hdf.xyz.z PS.mem run scoreboard players operation #cube.hdf.xy.z PS.mem += #cube.hdf.vy.z PS.mem

scoreboard players operation #cube.hdf.xyz.x PS.mem += #cube.hdf.vz.x PS.mem
scoreboard players operation #cube.hdf.xyz.y PS.mem += #cube.hdf.vz.y PS.mem
scoreboard players operation #cube.hdf.xyz.z PS.mem += #cube.hdf.vz.z PS.mem

scoreboard players operation #cube.hdf.xz.x PS.mem += #cube.hdf.vz.x PS.mem
scoreboard players operation #cube.hdf.xz.y PS.mem += #cube.hdf.vz.y PS.mem
scoreboard players operation #cube.hdf.xz.z PS.mem += #cube.hdf.vz.z PS.mem

execute store result score #cube.hdf.yz.x PS.mem run scoreboard players operation #cube.hdf.y.x PS.mem += #cube.hdf.vy.x PS.mem
execute store result score #cube.hdf.yz.y PS.mem run scoreboard players operation #cube.hdf.y.y PS.mem += #cube.hdf.vy.y PS.mem
execute store result score #cube.hdf.yz.z PS.mem run scoreboard players operation #cube.hdf.y.z PS.mem += #cube.hdf.vy.z PS.mem

scoreboard players operation #cube.hdf.yz.x PS.mem += #cube.hdf.vz.x PS.mem
scoreboard players operation #cube.hdf.yz.y PS.mem += #cube.hdf.vz.y PS.mem
scoreboard players operation #cube.hdf.yz.z PS.mem += #cube.hdf.vz.z PS.mem

scoreboard players operation #cube.hdf.z.x PS.mem += #cube.hdf.vz.x PS.mem
scoreboard players operation #cube.hdf.z.y PS.mem += #cube.hdf.vz.y PS.mem
scoreboard players operation #cube.hdf.z.z PS.mem += #cube.hdf.vz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.x.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.x.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.x.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.y.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.y.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.y.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.z.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.z.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.z,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.z.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xy.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xy.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xy.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.yz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.yz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.yz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xyz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xyz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xyz.z PS.mem