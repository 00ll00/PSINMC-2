#as player

execute as @e[tag=PS.path.a,tag=PS.path.working] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka run function ps:path/anchor/del
function ps:path/lastanchor
scoreboard players operation @s PS.tools.wka = $path.lasta.id PS.mem
execute if score @s PS.tools.wka matches 0 run scoreboard players set @s PS.tools.wkpath 0