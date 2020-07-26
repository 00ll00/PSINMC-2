#as stroke at new position
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.tools.cube.stroke.x","PS.tools.cube.stroke.z","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.owner
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.x = #tools.cube.p.x PS.mem
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.y = #tools.cube.p.y PS.mem
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.tools.p.z = #tools.cube.p.z PS.mem
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_