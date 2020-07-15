#as stroke at @s
execute if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all positioned ~1 ~ ~ align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~-1 ~ ~ all positioned ~-1 ~ ~ align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~1 ~ all positioned ~ ~1 ~ align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~-1 ~ all positioned ~ ~-1 ~ align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~1 all positioned ~ ~ ~1 align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~-1 all positioned ~ ~ ~-1 align xyz unless entity @e[tag=PS.tools.fill.stroke,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill.stroke","PS.tools.fill.stroke_","PS.players.owned","PS.players.belonging"]}
scoreboard players operation @e[tag=PS.tools.fill.stroke_] PS.players.owner = @s PS.players.owner
tag @e[tag=PS.tools.fill.stroke_] remove PS.tools.fill.stroke_
scoreboard players operation @s PS.color.r = $color.r PS.mem
scoreboard players operation @s PS.color.g = $color.g PS.mem
scoreboard players operation @s PS.color.b = $color.b PS.mem
function ps:color/getblock/call
kill @s