#as stroke at @s
execute positioned ~1 ~ ~ if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ps:air align xyz unless entity @e[tag=PS.tools.fill3d.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.fill3d.stroke","PS.tools.fill3d.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.fill3d.stroke_] PS.players.owner = @s PS.players.owner
tag @e[tag=PS.tools.fill3d.stroke_] remove PS.tools.fill3d.stroke_
setblock ~ ~ ~ white_concrete
kill @s