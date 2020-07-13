#with strokes
#output: $color.avg.r/g/b

scoreboard players set #color.avg.count PS.mem 0
scoreboard players set $color.avg.r PS.mem 0
scoreboard players set $color.avg.g PS.mem 0
scoreboard players set $color.avg.b PS.mem 0
execute as @e[tag=PS.color.stroke] at @s run function ps:color/getavg/stroke
scoreboard players operation $color.avg.r PS.mem /= #color.avg.count PS.mem
scoreboard players operation $color.avg.g PS.mem /= #color.avg.count PS.mem
scoreboard players operation $color.avg.b PS.mem /= #color.avg.count PS.mem