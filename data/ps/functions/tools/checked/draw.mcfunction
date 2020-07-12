#as player
scoreboard players operation $color.r1 PS.mem = @s PS.color.r1
scoreboard players operation $color.g1 PS.mem = @s PS.color.g1
scoreboard players operation $color.b1 PS.mem = @s PS.color.b1
scoreboard players operation $color.r2 PS.mem = @s PS.color.r2
scoreboard players operation $color.g2 PS.mem = @s PS.color.g2
scoreboard players operation $color.b2 PS.mem = @s PS.color.b2
function ps:tools/com/size
execute as @e[tag=PS.tools.stroke] at @s if block ~ ~ ~ #ps:colored run function ps:tools/checked/stroke
kill @e[tag=PS.tools.stroke]