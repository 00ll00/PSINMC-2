#at base
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.sld","PS.ctrl.sld.title"],Marker:1b,Invisible:1b,CustomNameVisible:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s0"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s1"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s2"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s3"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s4"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s5"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s6"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.sld","PS.ctrl.sld.s","PS.ctrl.sld.s7"],Marker:1b,Invisible:1b,Pose:{RightArm:[-15f,225f,0f]},Small:1b}
execute positioned ^-.4 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s0] run tp @s ~ ~ ~ ~ ~
execute positioned ^-.8 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s1] run tp @s ~ ~ ~ ~ ~
execute positioned ^-1.2 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s2] run tp @s ~ ~ ~ ~ ~
execute positioned ^-1.6 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s3] run tp @s ~ ~ ~ ~ ~
execute positioned ^-2 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s4] run tp @s ~ ~ ~ ~ ~
execute positioned ^-2.4 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s5] run tp @s ~ ~ ~ ~ ~
execute positioned ^-2.8 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s6] run tp @s ~ ~ ~ ~ ~
execute positioned ^-3.2 ^ ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.sld.s7] run tp @s ~ ~ ~ ~ ~
tag @e[tag=PS.ctrl_] remove PS.ctrl_