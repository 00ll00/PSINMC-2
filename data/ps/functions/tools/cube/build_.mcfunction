#as player
function ps:tools/cube/write
data modify storage ps:players storage.data.tools.cube_last set from storage ps:players storage.data.tools.cube
data modify storage ps:players storage.data.tools.cube.state set value "build"

execute at @e[tag=PS.ctrl.cube,tag=PS.ctrl.gizmo.o,tag=PS.players.belonging] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.cube.stroke","PS.tools.cube.stroke_","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.tools.cube.stroke_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.x 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.y 0
scoreboard players set @e[tag=PS.tools.cube.stroke_] PS.tools.p.z 0
tag @e[tag=PS.tools.cube.stroke_] remove PS.tools.cube.stroke_