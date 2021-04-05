#as player
function ps:tools/com/getvy
function ps:tools/com/getvh

function ps:tools/cube/hd/getf

execute as @e[tag=PS.ctrl.gizmo.y,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos set from entity 0-0110-5053-0-1 Pos

scoreboard players operation #cube.hdf.xy.x PS.mem = #cube.hdf.rx PS.mem
scoreboard players operation #cube.hdf.xy.y PS.mem = #cube.hdf.ry PS.mem
scoreboard players operation #cube.hdf.xy.z PS.mem = #cube.hdf.rz PS.mem
execute store result score #cube.hdf.yz.x PS.mem run scoreboard players operation #cube.hdf.xy.x PS.mem += #cube.hdf.vy.x PS.mem
execute store result score #cube.hdf.yz.y PS.mem run scoreboard players operation #cube.hdf.xy.y PS.mem += #cube.hdf.vy.y PS.mem
execute store result score #cube.hdf.yz.z PS.mem run scoreboard players operation #cube.hdf.xy.z PS.mem += #cube.hdf.vy.z PS.mem

scoreboard players operation #cube.hdf.xy.x PS.mem += #cube.hdf.vx.x PS.mem
scoreboard players operation #cube.hdf.xy.y PS.mem += #cube.hdf.vx.y PS.mem
scoreboard players operation #cube.hdf.xy.z PS.mem += #cube.hdf.vx.z PS.mem

execute store result score #cube.hdf.xyz.x PS.mem run scoreboard players operation #cube.hdf.yz.x PS.mem += #cube.hdf.vz.x PS.mem
execute store result score #cube.hdf.xyz.y PS.mem run scoreboard players operation #cube.hdf.yz.y PS.mem += #cube.hdf.vz.y PS.mem
execute store result score #cube.hdf.xyz.z PS.mem run scoreboard players operation #cube.hdf.yz.z PS.mem += #cube.hdf.vz.z PS.mem

scoreboard players operation #cube.hdf.xyz.x PS.mem += #cube.hdf.vx.x PS.mem
scoreboard players operation #cube.hdf.xyz.y PS.mem += #cube.hdf.vx.y PS.mem
scoreboard players operation #cube.hdf.xyz.z PS.mem += #cube.hdf.vx.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xy.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xy.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xy,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xy.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.yz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.yz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.yz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.yz.z PS.mem

execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[0] double 0.1 run scoreboard players get #cube.hdf.xyz.x PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[1] double 0.1 run scoreboard players get #cube.hdf.xyz.y PS.mem
execute as @e[tag=PS.ctrl.gizmo.xyz,tag=PS.ctrl.cube,tag=PS.players.belonging] store result entity @s Pos[2] double 0.1 run scoreboard players get #cube.hdf.xyz.z PS.mem