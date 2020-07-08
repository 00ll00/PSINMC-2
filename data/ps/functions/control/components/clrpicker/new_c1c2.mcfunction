#as player at base
execute positioned ^-.5 ^ ^ run function ps:control/components/slider/new_8
data modify entity @e[tag=PS.ctrl.new,tag=PS.ctrl.sld.title,tag=!PS.ctrl.clrpk,limit=1] CustomName set value '{"text":"R","color":"#ff0000"}'
team join ps.red @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk]
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.sr
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk
execute positioned ^-.5 ^-.5 ^ run function ps:control/components/slider/new_8
data modify entity @e[tag=PS.ctrl.new,tag=PS.ctrl.sld.title,tag=!PS.ctrl.clrpk,limit=1] CustomName set value '{"text":"G","color":"#00ff00"}'
team join ps.green @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk]
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.sg
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk
execute positioned ^-.5 ^-1 ^ run function ps:control/components/slider/new_8
data modify entity @e[tag=PS.ctrl.new,tag=PS.ctrl.sld.title,tag=!PS.ctrl.clrpk,limit=1] CustomName set value '{"text":"B","color":"#0000ff"}'
team join ps.blue @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk]
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.sb
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk
execute positioned ^.1 ^-.6 ^ run function ps:control/components/button/new_nt
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.bc
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk

summon armor_stand ^.1 ^-1 ^ {Tags:["PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.clrpk","PS.ctrl.clrpk.c","PS.ctrl.clrpk.c1"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b}
summon armor_stand ^ ^-1.1 ^.1 {Tags:["PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.clrpk","PS.ctrl.clrpk.c","PS.ctrl.clrpk.c2"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b}
execute positioned ^.2 ^-1 ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.clrpk.c1] run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^-1.2 ^.1 as @e[tag=PS.ctrl_,tag=PS.ctrl.clrpk.c2] run tp @s ~ ~ ~ ~ ~
tag @e[tag=PS.ctrl_] remove PS.ctrl_

scoreboard players set @e[tag=PS.ctrl.new,tag=PS.ctrl.clrpk.bc] PS.tools.clr 0
scoreboard players operation $ctrl.clrpk.r1 PS.mem = @s PS.color.r1
scoreboard players operation $ctrl.clrpk.g1 PS.mem = @s PS.color.g1
scoreboard players operation $ctrl.clrpk.b1 PS.mem = @s PS.color.b1
scoreboard players operation $ctrl.clrpk.r2 PS.mem = @s PS.color.r2
scoreboard players operation $ctrl.clrpk.g2 PS.mem = @s PS.color.g2
scoreboard players operation $ctrl.clrpk.b2 PS.mem = @s PS.color.b2
tag @e[tag=PS.ctrl.new,tag=PS.ctrl.clrpk] add PS.ctrl.active
function ps:control/components/clrpicker/refresh
tag @e[tag=PS.ctrl.active] remove PS.ctrl.active
