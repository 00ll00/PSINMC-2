#as player
scoreboard players set #tools.inter PS.mem 0
function ps:tools/com/sizehp
execute as @e[tag=PS.tools.stroke] at @s if block ~ ~ ~ white_concrete run function ps:tools/airbrush3d/stroke_rev
kill @e[tag=PS.tools.stroke]