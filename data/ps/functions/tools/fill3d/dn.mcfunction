#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ #ps:air align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.fill3d.stroke_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.fill3d.stroke_] remove PS.tools.fill3d.stroke_