#as player

execute at @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.z,tag=PS.players.belonging] align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags: ["PS.tools.sphere.stroke","PS.tools.sphere.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.x = @s PS.tools.vz.x
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.y = @s PS.tools.vz.y
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.z = @s PS.tools.vz.z
tag @e[tag=PS.tools.sphere.stroke_] remove PS.tools.sphere.stroke_