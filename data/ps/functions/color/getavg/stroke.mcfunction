#as stroke at @s
function ps:color/getcolor/call
scoreboard players operation #color.avg.count PS.mem += #color.got PS.mem
scoreboard players operation $color.avg.r PS.mem += @s PS.color.r
scoreboard players operation $color.avg.g PS.mem += @s PS.color.g
scoreboard players operation $color.avg.b PS.mem += @s PS.color.b