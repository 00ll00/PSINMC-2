#as stroke at new position
summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.sphere.stroke","PS.tools.sphere.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.x = #tools.sphere.p.x PS.mem
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.y = #tools.sphere.p.y PS.mem
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.z = #tools.sphere.p.z PS.mem
tag @e[tag=PS.tools.sphere.stroke_] remove PS.tools.sphere.stroke_