#as player
scoreboard players set #tools.inter PS.mem 0
function ps:tools/com3d/sizehp
execute as @e[tag=PS.tools.stroke] at @s run function ps:tools/airbrush3d/stroke
kill @e[tag=PS.tools.stroke]