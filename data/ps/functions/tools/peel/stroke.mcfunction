#as stroke at @s
execute positioned ~1 ~ ~ if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ white_concrete align xyz unless entity @e[tag=PS.tools.peel.stroke,dx=0,dy=0,dz=0] run summon minecraft:marker ~.5 ~.5 ~.5 {Tags: ["PS.tools.peel.stroke","PS.tools.peel.stroke_","PS.players.owned"]}
scoreboard players operation @e[tag=PS.tools.peel.stroke_] PS.players.owner = @s PS.players.owner
tag @e[tag=PS.tools.peel.stroke_] remove PS.tools.peel.stroke_
setblock ~ ~ ~ air
kill @s