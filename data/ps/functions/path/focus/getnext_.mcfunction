#as player

scoreboard players add @s PS.tools.wka 1
scoreboard players set @s PS.tools.wkp 0
execute store success score $focus.g PS.mem as @e[tag=PS.path.working,tag=PS.path.p] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka if score @s PS.path.p.id = @a[tag=PS.players.op,limit=1] PS.tools.wkp run function ps:path/focus/setfocus