#at base
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.o","PS.ctrl.gizmo.m.o"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.x","PS.ctrl.gizmo.m.x"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.y","PS.ctrl.gizmo.m.y"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.z","PS.ctrl.gizmo.m.z"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.xy","PS.ctrl.gizmo.m.x","PS.ctrl.gizmo.m.y"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.xz","PS.ctrl.gizmo.m.x","PS.ctrl.gizmo.m.z"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.yz","PS.ctrl.gizmo.m.y","PS.ctrl.gizmo.m.z"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.ctrl_","PS.players.owned","PS.players.belonging","PS.focus.target","PS.ctrl.gizmo","PS.ctrl.gizmo.box","PS.ctrl.gizmo.xyz","PS.ctrl.gizmo.m.x","PS.ctrl.gizmo.m.y","PS.ctrl.gizmo.m.z"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b,Glowing:1b}

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
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xy] PS.color.r 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xy] PS.color.g 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xy] PS.color.b 3
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xy]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.yz] PS.color.r 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.yz] PS.color.g 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.yz] PS.color.b 3
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.yz]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xz] PS.color.r 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xz] PS.color.g 3
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xz] PS.color.b 3
team join ps.gray @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xz]
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xyz] PS.color.r 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xyz] PS.color.g 7
scoreboard players set @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xyz] PS.color.b 7
team join ps.white @e[tag=PS.ctrl_,tag=PS.ctrl.gizmo.xyz]

execute as @e[tag=PS.ctrl_] run function ps:color/getitem/call