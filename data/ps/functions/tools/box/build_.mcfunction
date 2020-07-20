#as player
function ps:tools/box/write
data modify storage ps:players storage.data.tools.box_last set from storage ps:players storage.data.tools.box
data modify storage ps:players storage.data.tools.box.state set value "build"

execute at @e[tag=PS.ctrl.box,tag=PS.ctrl.gizmo.o,tag=PS.players.belonging] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.box.stroke","PS.tools.box.stroke_","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.tools.box.stroke_] PS.players.owner = @s PS.players.id
scoreboard players set @e[tag=PS.tools.box.stroke_] PS.tools.p.x 0
scoreboard players set @e[tag=PS.tools.box.stroke_] PS.tools.p.y 0
scoreboard players set @e[tag=PS.tools.box.stroke_] PS.tools.p.z 0
tag @e[tag=PS.tools.box.stroke_] remove PS.tools.box.stroke_