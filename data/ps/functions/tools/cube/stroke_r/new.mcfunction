#as stroke at new position
summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.x = #tools.cube.p.x PS.mem
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.y = #tools.cube.p.y PS.mem
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.z = #tools.cube.p.z PS.mem
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_