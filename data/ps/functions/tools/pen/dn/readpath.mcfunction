#as path marker

scoreboard players set #pen.readp.same PS.mem 0
execute store success score #pen.readp.same PS.mem if score @s PS.path.id = @a[tag=PS.players.op,limit=1] PS.tools.wkpath
execute if score #pen.readp.same PS.mem matches 1 run scoreboard players operation @a[tag=PS.players.op,limit=1] PS.tools.wka = @s PS.path.a.id

execute if score #pen.readp.same PS.mem matches 0 run function ps:tools/pen/dn/readpath_