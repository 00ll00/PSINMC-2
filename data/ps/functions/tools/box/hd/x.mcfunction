#as player
scoreboard players operation @s PS.focus.r.x2 = @s PS.focus.x
function ps:tools/com/getwhd

execute as @e[tag=PS.ctrl.gizmo.m.x,tag=PS.ctrl.box,tag=PS.players.belonging] run data modify entity @s Pos[0] set from entity 0-0110-5053-0-1 Pos[0]
