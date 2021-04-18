#as player at base
execute positioned ^-.5 ^ ^ run function ps:control/components/slider/new_8
data modify entity @e[tag=PS.ctrl.new,tag=PS.ctrl.sld.title,tag=!PS.ctrl.clrpk,limit=1] CustomName set value '{"text":"A","color":"#ffffff"}'
team join ps.white @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk]
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s0] PS.color.a 0
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s1] PS.color.a 1
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s2] PS.color.a 2
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s3] PS.color.a 3
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s4] PS.color.a 4
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s5] PS.color.a 5
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s6] PS.color.a 6
scoreboard players set @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s7] PS.color.a 7
execute as @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s] run scoreboard players operation @s PS.color.r = @s PS.color.a
execute as @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s] run scoreboard players operation @s PS.color.g = @s PS.color.a
execute as @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s] run scoreboard players operation @s PS.color.b = @s PS.color.a
execute as @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk,tag=PS.ctrl.sld.s] run function ps:color/getitem/call
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.sa
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk
execute positioned ^.1 ^ ^ run function ps:control/components/button/new_nt
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk.bc
tag @e[tag=PS.ctrl.new,tag=!PS.ctrl.clrpk] add PS.ctrl.clrpk

summon armor_stand ^.1 ^-.4 ^ {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.clrpk","PS.ctrl.clrpk.c","PS.ctrl.clrpk.c1","PS.ctrl.clrpk.a","PS.ctrl.clrpk.a1"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b}
summon armor_stand ^ ^-.5 ^.1 {Tags:["PS.","PS.ctrl.new","PS.ctrl_","PS.ctrl","PS.players.owned","PS.players.belonging","PS.ctrl.clrpk","PS.ctrl.clrpk.c","PS.ctrl.clrpk.c2","PS.ctrl.clrpk.a","PS.ctrl.clrpk.a2"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b}
execute positioned ^.2 ^-.4 ^ as @e[tag=PS.ctrl_,tag=PS.ctrl.clrpk.a1] run tp @s ~ ~ ~ ~ ~
execute positioned ^ ^-.6 ^.1 as @e[tag=PS.ctrl_,tag=PS.ctrl.clrpk.a2] run tp @s ~ ~ ~ ~ ~
tag @e[tag=PS.ctrl_] remove PS.ctrl_

scoreboard players set @e[tag=PS.ctrl.new,tag=PS.ctrl.clrpk.bc] PS.tools.clr 0
scoreboard players operation $ctrl.clrpk.a1 PS.mem = @s PS.color.a1
scoreboard players operation $ctrl.clrpk.a2 PS.mem = @s PS.color.a2
tag @e[tag=PS.ctrl.new,tag=PS.ctrl.clrpk] add PS.ctrl.active
function ps:control/components/clrpicker/refresh_a
tag @e[tag=PS.ctrl.active] remove PS.ctrl.active
