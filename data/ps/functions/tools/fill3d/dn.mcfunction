#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ #ps:air align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.fill3d.stroke_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.fill3d.stroke_] remove PS.tools.fill3d.stroke_