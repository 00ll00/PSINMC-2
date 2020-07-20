#as player
scoreboard players operation @s PS.focus.r.y2 = @s PS.focus.y
function ps:tools/com/getwhd

execute as @e[tag=PS.ctrl.gizmo.m.y,tag=PS.ctrl.cube,tag=PS.players.belonging] run data modify entity @s Pos[1] set from entity 0-0110-5053-0-1 Pos[1]
