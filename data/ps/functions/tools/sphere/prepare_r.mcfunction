#as player

execute unless data storage ps:players storage.data.tools.sphere{state:"pause"} at @e[tag=PS.ctrl.sphere,tag=PS.ctrl.gizmo.s,tag=PS.players.belonging] align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags: ["PS.tools.sphere.stroke","PS.tools.sphere.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.players.owner = @s PS.players.id
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.x = @s PS.tools.whd.w
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.y = @s PS.tools.whd.h
scoreboard players operation @e[tag=PS.tools.sphere.stroke_] PS.tools.p.z = @s PS.tools.whd.d
tag @e[tag=PS.tools.sphere.stroke_] remove PS.tools.sphere.stroke_