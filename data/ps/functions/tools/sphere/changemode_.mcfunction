#as player
scoreboard players set @s PS.tools.freemd 1
execute if data storage ps:players storage.data.tools.sphere{state:"hd_x"} run data modify storage ps:players storage.data.tools.sphere.state set value "hd_f_x"
execute if data storage ps:players storage.data.tools.sphere{state:"hd_y"} run data modify storage ps:players storage.data.tools.sphere.state set value "hd_f_y"
execute if data storage ps:players storage.data.tools.sphere{state:"hd_z"} run data modify storage ps:players storage.data.tools.sphere.state set value "hd_f_z"
function ps:players/storage/markdirty

scoreboard players operation @s PS.tools.vx.x = @s PS.tools.r
scoreboard players operation @s PS.tools.vy.y = @s PS.tools.r
scoreboard players operation @s PS.tools.vz.z = @s PS.tools.r

scoreboard players set @s PS.tools.vx.y 0
scoreboard players set @s PS.tools.vx.z 0
scoreboard players set @s PS.tools.vy.x 0
scoreboard players set @s PS.tools.vy.z 0
scoreboard players set @s PS.tools.vz.x 0
scoreboard players set @s PS.tools.vz.y 0

team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.x-,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.y-,tag=PS.players.belonging]
team join ps.dark_gray @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.z-,tag=PS.players.belonging]
kill @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.s,tag=PS.players.belonging]