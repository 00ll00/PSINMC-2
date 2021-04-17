#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ #ps:colored align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.fill.stroke_] PS.players.owner = @s PS.players.id
execute as @e[tag=PS.tools.fill.stroke_] at @s run function ps:tools/fill/stroke
execute if score $color.set PS.mem matches 0 run kill @e[tag=PS.tools.fill.stroke,tag=PS.players.belonging]