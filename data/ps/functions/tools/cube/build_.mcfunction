#as player
function ps:tools/cube/write

execute unless data storage ps:players storage.data.tools.cube{state:"pause"} at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,tag=PS.players.belonging] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.tools.cube.stroke.x","PS.tools.cube.stroke.y","PS.tools.cube.stroke.z","PS.players.owned","PS.players.belonging"]}

data modify storage ps:players storage.data.tools.cube_last set from storage ps:players storage.data.tools.cube

execute if score @s PS.tools.freemd matches 1 run function ps:tools/cube/prepare_f

data modify storage ps:players storage.data.tools.cube.state set value "build"

scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.x 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.y 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.z 0
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_