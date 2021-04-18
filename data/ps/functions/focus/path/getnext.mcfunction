#as player
#input:
#   @s PS.tools.wka
#   @s PS.tools.wkp
#output:
#   $focus.g
#   @s PS.focus.x/y/z
#   $focus.x/y/z
#   $focus.ox/y/z
#   focus marker

scoreboard players operation $focus.ox PS.mem = @s PS.focus.x
scoreboard players operation $focus.oy PS.mem = @s PS.focus.y
scoreboard players operation $focus.oz PS.mem = @s PS.focus.z
scoreboard players set $focus.g PS.mem 0
scoreboard players add @s PS.tools.wkp 1
execute store success score $focus.g PS.mem as @e[tag=PS.path.working,tag=PS.path.p] if score @s PS.path.a.id = @a[tag=PS.players.op,limit=1] PS.tools.wka if score @s PS.path.p.id = @a[tag=PS.players.op,limit=1] PS.tools.wkp run function ps:focus/path/setfocus
execute if score $focus.g PS.mem matches 0 run function ps:focus/path/getnext_

#focus old
kill @e[tag=PS.focus.old,tag=PS.players.belonging]
tag @e[tag=PS.focus.old_,tag=PS.players.belonging] add PS.focus.old
execute at 0-0110-5053-0-1 run summon marker ~ ~ ~ {Tags:["PS.","PS.focus.old__","PS.focus.old_","PS.players.owned","PS.players.belonging"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players operation @e[tag=PS.focus.old__,tag=PS.players.belonging] PS.players.owner = @s PS.players.id
tag @e[tag=PS.focus.old__,tag=PS.players.belonging] remove PS.focus.old__