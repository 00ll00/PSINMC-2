#as player
scoreboard players set @s PS.tools.freemd 1
execute if data storage ps:players storage.data.tools.cube{state:"hd_x"} run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_x"
execute if data storage ps:players storage.data.tools.cube{state:"hd_y"} run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_y"
execute if data storage ps:players storage.data.tools.cube{state:"hd_z"} run data modify storage ps:players storage.data.tools.cube.state set value "hd_f_z"
function ps:players/storage/markdirty

scoreboard players operation @s PS.tools.vx.x = @s PS.focus.r.x2
scoreboard players operation @s PS.tools.vy.y = @s PS.focus.r.y2
scoreboard players operation @s PS.tools.vz.z = @s PS.focus.r.z2
scoreboard players operation @s PS.tools.vx.x -= @s PS.focus.r.x1
scoreboard players operation @s PS.tools.vy.y -= @s PS.focus.r.y1
scoreboard players operation @s PS.tools.vz.z -= @s PS.focus.r.z1

scoreboard players set @s PS.tools.vx.y 0
scoreboard players set @s PS.tools.vx.z 0
scoreboard players set @s PS.tools.vy.x 0
scoreboard players set @s PS.tools.vy.z 0
scoreboard players set @s PS.tools.vz.x 0
scoreboard players set @s PS.tools.vz.y 0

team join ps.dark_gray @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.xy,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.xz,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.yz,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.xyz,tag=PS.players.belonging]