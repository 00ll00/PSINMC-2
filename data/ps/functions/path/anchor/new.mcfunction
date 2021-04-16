#as player at new position
#input:
#   @s PS.tools.wkpath
#   @s PS.focus.x/y/z
#   $path.a.id : insert index, start at 1

scoreboard players operation #path.anchor.temp PS.mem = $path.a.id PS.mem
scoreboard players remove #path.anchor.temp PS.mem 1
execute as @e[tag=PS.path.p,tag=!PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = #path.anchor.temp PS.mem run kill @s

execute as @e[tag=PS.path.p,tag=PS.path.working] if score @s PS.path.a.id >= $path.a.id PS.mem run scoreboard players add @s PS.path.a.id 1

summon armor_stand ~ ~ ~ {Tags:["PS.path.a_","PS.path","PS.path.working","PS.focus.target","PS.path.a","PS.path.p"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,Glowing:1b}
execute as @e[tag=PS.path.a_] run function ps:path/anchor/inita

function ps:path/refresha
execute as @e[tag=PS.path.a_] run function ps:path/anchor/gen/h1h2

tag @e[tag=PS.path.a_] remove PS.path.a_