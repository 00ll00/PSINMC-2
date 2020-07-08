#at base
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.btn","PS.ctrl.btn.title"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.focusable","PS.ctrl.btn","PS.ctrl.btn.b"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b}
execute positioned ^-1 ^ ^ as @e[tag=PS.ctrl_] run tp @s ~ ~ ~ ~ ~
tag @e[tag=PS.ctrl_] remove PS.ctrl_