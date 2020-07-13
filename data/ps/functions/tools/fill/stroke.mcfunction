#as fill at @s
execute if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all positioned ~1 ~ ~ align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~-1 ~ ~ all positioned ~-1 ~ ~ align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~1 ~ all positioned ~ ~1 ~ align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~-1 ~ all positioned ~ ~-1 ~ align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~1 all positioned ~ ~ ~1 align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
execute if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~-1 all positioned ~ ~ ~-1 align xyz unless entity @e[tag=PS.tools.fill,dx=0,dy=0,dz=0] run summon minecraft:area_effect_cloud ~.5 ~ ~.5 {Age: -1, Duration: -1, WaitTime: -2147483648, Tags: ["PS.tools.fill","PS.tools.fill_"]}
scoreboard players operation @e[tag=PS.tools.fill_] PS.players.owner = @s PS.players.id
tag @e[tag=PS.tools.fill_] remove PS.tools.fill_
function ps:color/getblock/call