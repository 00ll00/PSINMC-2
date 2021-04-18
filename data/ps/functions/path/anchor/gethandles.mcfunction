#as anchor at @s
#input:
#   @s PS.path.h1.x/y/z
#   @s PS.path.h1.x/y/z
#   @s PS.path.h2.x/y/z

kill @e[tag=PS.path.working,tag=PS.path.h]
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.path.h_","PS.path","PS.path.working","PS.focus.target","PS.path.h","PS.path.h1"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,Glowing:1b}
summon armor_stand ~ ~ ~ {Tags:["PS.","PS.path.h_","PS.path","PS.path.working","PS.focus.target","PS.path.h","PS.path.h2"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,Glowing:1b}

scoreboard players operation @e[tag=PS.path.h_] PS.path.id = @s PS.path.id
scoreboard players operation @e[tag=PS.path.h_] PS.path.a.id = @s PS.path.a.id
scoreboard players set @e[tag=PS.path.h_] PS.color.r 0
scoreboard players set @e[tag=PS.path.h_] PS.color.g 7
scoreboard players set @e[tag=PS.path.h_] PS.color.b 7
execute as @e[tag=PS.path.h_] run function ps:color/getitem/call
team join ps.aqua @e[tag=PS.path.h_]

function ps:path/anchor/refreshhdl

tag @e[tag=PS.path.h_] remove PS.path.h_