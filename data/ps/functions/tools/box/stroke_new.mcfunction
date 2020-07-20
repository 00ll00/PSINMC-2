#as stroke at new position
summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.box.stroke","PS.tools.box.stroke_","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.tools.box.stroke_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.tools.box.stroke_] PS.tools.p.x = #tools.box.p.x PS.mem
scoreboard players operation @e[tag=PS.tools.box.stroke_] PS.tools.p.y = #tools.box.p.y PS.mem
scoreboard players operation @e[tag=PS.tools.box.stroke_] PS.tools.p.z = #tools.box.p.z PS.mem
tag @e[tag=PS.tools.box.stroke_] remove PS.tools.box.stroke_