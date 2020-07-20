#as player
scoreboard players operation @s PS.focus.r.x2 = @s PS.focus.x
scoreboard players operation @s PS.focus.r.z2 = @s PS.focus.z
function ps:tools/com/getwhd

execute as @e[tag=PS.ctrl.gizmo.m.x,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos[0] set from entity 0-0110-5053-0-1 Pos[0]
execute as @e[tag=PS.ctrl.gizmo.m.z,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos[2] set from entity 0-0110-5053-0-1 Pos[2]
