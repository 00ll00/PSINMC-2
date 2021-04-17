#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ white_concrete align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.peel.stroke_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.peel.stroke_] remove PS.tools.peel.stroke_