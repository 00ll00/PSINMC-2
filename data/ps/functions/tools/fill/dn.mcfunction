#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ #ps:colored align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["test","PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.fill.stroke_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.fill.stroke_] remove PS.tools.fill.stroke_