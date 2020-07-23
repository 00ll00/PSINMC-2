#as player
function ps:tools/com/getvx
function ps:tools/cube/hd/getf

execute as @e[tag=PS.ctrl.gizmo.x,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

scoreboard players operation #cube.hdf.xz.x PS.mem = #cube.hdf.rx PS.mem
scoreboard players operation #cube.hdf.xz.y PS.mem = #cube.hdf.ry PS.mem
scoreboard players operation #cube.hdf.xz.z PS.mem = #cube.hdf.rz PS.mem
execute store result score #cube.hdf.xy.x PS.mem run scoreboard players operation #cube.hdf.xz.x PS.mem += #cube.hdf.vx.x PS.mem
execute store result score #cube.hdf.xy.y PS.mem run scoreboard players operation #cube.hdf.xz.y PS.mem += #cube.hdf.vx.y PS.mem
execute store result score #cube.hdf.xy.z PS.mem run scoreboard players operation #cube.hdf.xz.z PS.mem += #cube.hdf.vx.z PS.mem

scoreboard players operation #cube.hdf.xy.x PS.mem += #cube.hdf.vy.x PS.mem
scoreboard players operation #cube.hdf.xy.y PS.mem += #cube.hdf.vy.y PS.mem
scoreboard players operation #cube.hdf.xy.z PS.mem += #cube.hdf.vy.z PS.mem

execute store result score #cube.hdf.xyz.x PS.mem run scoreboard players operation #cube.hdf.xz.x PS.mem += #cube.hdf.vz.x PS.mem
execute store result score #cube.hdf.xyz.y PS.mem run scoreboard players operation #cube.hdf.xz.y PS.mem += #cube.hdf.vz.y PS.mem
execute store result score #cube.hdf.xyz.z PS.mem run scoreboard players operation #cube.hdf.xz.z PS.mem += #cube.hdf.vz.z PS.mem

scoreboard players operation #cube.hdf.xyz.x PS.mem += #cube.hdf.vy.x PS.mem
scoreboard players operation #cube.hdf.xyz.y PS.mem += #cube.hdf.vy.y PS.mem
scoreboard players operation #cube.hdf.xyz.z PS.mem += #cube.hdf.vy.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xy.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xy.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xy.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xyz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xyz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xyz.z PS.mem