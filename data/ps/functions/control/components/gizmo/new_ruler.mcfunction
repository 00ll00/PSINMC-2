#at base
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.ruler","PS.ctrl.gizmo.s"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.ruler","PS.ctrl.gizmo.e"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}

scoreboard players set @e[tag=PS.ctrl_] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_] PS.color.b 0
team join ps.yellow @e[tag=PS.ctrl_]

execute as @e[tag=PS.ctrl_] run function ps:color/getitem/call
tag @e[tag=PS.ctrl_] remove PS.ctrl_