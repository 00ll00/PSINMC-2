#as player

scoreboard players set #anchoradj.occ PS.mem 0
execute if score $focus.g PS.mem matches 1 as @a[tag=PS.op,tag=!PS.players.op] if score @s PS.tools.wkpath = @e[tag=PS.vector.focused,limit=1] PS.path.id run scoreboard players set #anchoradj.occ PS.mem 1
execute if score $focus.g PS.mem matches 1 if score #anchoradj.occ PS.mem matches 0 run function ps:tools/anchoradj/dn_