#as player
scoreboard players set #tools.inter PS.mem 0
function ps:tools/com/size
function ps:color/getavg/call
scoreboard players operation $color.r PS.mem = $color.avg.r PS.mem
scoreboard players operation $color.g PS.mem = $color.avg.g PS.mem
scoreboard players operation $color.b PS.mem = $color.avg.b PS.mem
scoreboard players operation $color.a PS.mem = @s PS.color.a
execute as @e[tag=PS.tools.stroke] at @s if block ~ ~ ~ #ps:colored run function ps:tools/burn/stroke
kill @e[tag=PS.tools.stroke]