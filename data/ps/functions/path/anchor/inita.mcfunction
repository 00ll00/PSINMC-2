#as anchor
#input: $path.a.id

scoreboard players operation @s PS.path.id = @a[tag=PS.players.op,limit=1] PS.tools.wkpath
scoreboard players operation @s PS.path.a.id = $path.a.id PS.mem
scoreboard players set @s PS.path.p.id 0

scoreboard players operation @s PS.path.p.x = @a[tag=PS.players.op,limit=1] PS.focus.x
scoreboard players operation @s PS.path.p.y = @a[tag=PS.players.op,limit=1] PS.focus.y
scoreboard players operation @s PS.path.p.z = @a[tag=PS.players.op,limit=1] PS.focus.z

scoreboard players set @s PS.path.h1.x 0
scoreboard players set @s PS.path.h1.y 0
scoreboard players set @s PS.path.h1.z 0
scoreboard players set @s PS.path.h2.x 0
scoreboard players set @s PS.path.h2.y 0
scoreboard players set @s PS.path.h2.z 0