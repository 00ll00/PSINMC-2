#as player

execute at @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.y,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.sphere.stroke","PS.tools.sphere.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.x = @s PS.tools.vy.x
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.y = @s PS.tools.vy.y
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.z = @s PS.tools.vy.z
tag @e[tag=PS.tools.sphere.stroke_] remove PS.tools.sphere.stroke_