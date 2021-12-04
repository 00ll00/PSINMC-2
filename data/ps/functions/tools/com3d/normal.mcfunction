#as focus marker at @s
#rotate focus marker as normal
#kill all PS.stroke

summon minecraft:marker ~ ~ ~ {Tags:["PS.tools.normal.o"]}

function ps:tools/com3d/size

execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~1 ~ ~ #ps:air at @s run tp @s ~-1 ~ ~
execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~-1 ~ ~ #ps:air at @s run tp @s ~1 ~ ~
execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~ ~1 ~ #ps:air at @s run tp @s ~ ~-1 ~
execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~ ~-1 ~ #ps:air at @s run tp @s ~ ~1 ~
execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~ ~ ~1 #ps:air at @s run tp @s ~ ~ ~-1
execute as @e[tag=PS.tools.normal.o] at @e[tag=PS.tools.stroke] unless block ~ ~ ~-1 #ps:air at @s run tp @s ~ ~ ~1

execute facing entity @e[limit=1,tag=PS.tools.normal.o] feet run tp @s ~ ~ ~ ~ ~

kill @e[tag=PS.tools.normal.o]
kill @e[tag=PS.tools.stroke]