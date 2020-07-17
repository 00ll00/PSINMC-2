#as player
function ps:focus/record2
function ps:tools/com/getwhd

execute as @e[tag=PS.ctrl.gizmo.m.x,tag=PS.ctrl.box] run data modify entity @s Pos[0] set from entity 0-0110-5053-0-1 Pos[0]
execute as @e[tag=PS.ctrl.gizmo.m.y,tag=PS.ctrl.box] run data modify entity @s Pos[1] set from entity 0-0110-5053-0-1 Pos[1]
execute as @e[tag=PS.ctrl.gizmo.m.z,tag=PS.ctrl.box] run data modify entity @s Pos[2] set from entity 0-0110-5053-0-1 Pos[2]
