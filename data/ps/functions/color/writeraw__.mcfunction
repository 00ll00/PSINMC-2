#as stroke
execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["PS.","PS.color.raw","PS.color.raw.new","PS.color.raw_"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players set @e[tag=PS.color.raw_] PS.color.rawid 0
scoreboard players add @e[tag=PS.color.raw] PS.color.rawid 1

scoreboard players operation @e[tag=PS.color.raw_] PS.color.r = @s PS.color.r
scoreboard players operation @e[tag=PS.color.raw_] PS.color.g = @s PS.color.g
scoreboard players operation @e[tag=PS.color.raw_] PS.color.b = @s PS.color.b

tag @e[tag=PS.color.raw_] remove PS.color.raw_