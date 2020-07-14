#as player
scoreboard players operation $color.r PS.mem = @s PS.color.r
scoreboard players operation $color.g PS.mem = @s PS.color.g
scoreboard players operation $color.b PS.mem = @s PS.color.b
execute as @e[tag=PS.tools.fill.stroke,tag=PS.players.belonging] at @s run function ps:tools/fill/stroke