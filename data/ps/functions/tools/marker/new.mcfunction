#as player at new position

summon armor_stand ~ ~ ~ {Tags:["PS.marker_","PS.marker","PS.players.owned","PS.players.belonging","PS.focus.target"],Pose:{RightArm:[-15f,225f,0f]},Marker:1b,Invisible:1b,Small:1b,Glowing:1b}
execute as @e[tag=PS.marker_] run function ps:tools/marker/initm

tag @e[tag=PS.marker_] remove PS.marker_