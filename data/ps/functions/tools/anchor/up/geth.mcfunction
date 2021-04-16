#as player

execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka at @s run function ps:path/anchor/gethandles