#at base
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.o","PS.ctrl.gizmo.m.o"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.x","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.y","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.z","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.x-","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.y-","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.z-","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.sphere","PS.ctrl.gizmo.s","PS.ctrl.gizmo.m.r"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}

scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.o] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.o] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.o] PS.color.b 0
team join ps.yellow @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.o]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x] PS.color.g 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x] PS.color.b 0
team join ps.red @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y] PS.color.r 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y] PS.color.b 0
team join ps.green @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z] PS.color.r 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z] PS.color.g 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z] PS.color.b 7
team join ps.blue @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x-] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x-] PS.color.g 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x-] PS.color.b 0
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.x-]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y-] PS.color.r 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y-] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y-] PS.color.b 0
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.y-]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z-] PS.color.r 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z-] PS.color.g 0
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z-] PS.color.b 7
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.z-]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.s] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.s] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.s] PS.color.b 7
team join ps.white @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.s]

execute as @e[tag=PS.ctrl_] run function ps:color/getitem/call
tag @e[tag=PS.ctrl_] remove PS.ctrl_