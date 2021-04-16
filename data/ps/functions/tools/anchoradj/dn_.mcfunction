#as player

tag @e[tag=PS.path.working] remove PS.path.working

scoreboard players operation @s PS.tools.wkpath = @e[tag=PS.vector.focused,limit=1] PS.path.id
execute as @e[tag=PS.path] if score @s PS.path.id = @a[tag=PS.players.op,limit=1] PS.tools.wkpath run tag @s add PS.path.working

scoreboard players operation @s PS.tools.wka = @e[tag=PS.vector.focused,limit=1] PS.path.a.id
scoreboard players operation $path.a.id PS.mem = @s PS.tools.wka
scoreboard players add $path.a.id PS.mem 1

scoreboard players set #anchoradj.temp PS.mem 0
execute store success score #anchoradj.temp PS.mem as @e[tag=PS.vector.focused,tag=PS.path.a] run function ps:path/anchor/del
execute if score #anchoradj.temp PS.mem matches 0 at @e[tag=PS.vector.focused] run function ps:path/anchor/new