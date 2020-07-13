#as player
execute at 0-0110-5053-0-1 if block ~ ~ ~ #ps:colored align xyz run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
scoreboard players operation @e[tag=PS.tools.fill_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.fill_] remove PS.tools.fill_