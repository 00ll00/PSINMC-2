#as player
function ps:tools/com/size
scoreboard players operation $color.r PS.mem = @s PS.color.r
scoreboard players operation $color.g PS.mem = @s PS.color.g
scoreboard players operation $color.b PS.mem = @s PS.color.b
scoreboard players operation $color.a PS.mem = @s PS.color.a
execute as @e[tag=PS.tools.stroke] at @s if block ~ ~ ~ #ps:colored run function ps:tools/brush/stroke
kill @e[tag=PS.tools.stroke]