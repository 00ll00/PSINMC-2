#as player

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,tag=PS.players.belonging] align xyz positioned ~.5 ~ ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging","PS.main.tick_life"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.x 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.y 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.z 0
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_

execute store success storage ps:players storage.data.tools.cube_last.revx byte 1 if score @s PS.focus.r.x2 < @s PS.focus.r.x1
execute store success storage ps:players storage.data.tools.cube_last.revy byte 1 if score @s PS.focus.r.y2 < @s PS.focus.r.y1
execute store success storage ps:players storage.data.tools.cube_last.revz byte 1 if score @s PS.focus.r.z2 < @s PS.focus.r.z1