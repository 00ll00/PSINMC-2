#as path marker

scoreboard players set #pen.readp.occ PS.mem 0
execute as @a[tag=PS.op] store success score #pen.readp.occ PS.mem if score @s PS.tools.wkpath = @s PS.path.id

execute if score #pen.readp.occ PS.mem matches 1 run data modify storage ps:players storage.data.tools.pen.state set value "occupied"
execute if score #pen.readp.occ PS.mem matches 1 run function ps:players/storage/markdirty

execute if score #pen.readp.occ PS.mem matches 0 as @a[tag=PS.players.op,limit=1] run function ps:tools/pen/bu
execute if score #pen.readp.occ PS.mem matches 0 run scoreboard players operation @a[tag=PS.players.op,limit=1] PS.tools.wkpath = @s PS.path.id
execute if score #pen.readp.occ PS.mem matches 0 run scoreboard players operation @a[tag=PS.players.op,limit=1] PS.tools.wka = @s PS.path.a.id
execute if score #pen.readp.occ PS.mem matches 0 run tag @e[tag=PS.path.working] remove PS.path.working
execute if score #pen.readp.occ PS.mem matches 0 as @e[tag=PS.path] if score @s PS.path.id = @a[tag=PS.players.op,limit=1] PS.tools.wkpath run tag @s add PS.path.working