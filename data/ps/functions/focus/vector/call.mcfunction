#as player at player
#output:
#   @s PS.focus.x/y/z
#   $focus.x/y/z
#   $focus.ox/y/z
#   $focus.g

scoreboard players operation $focus.ox PS.mem = @s PS.focus.x
scoreboard players operation $focus.oy PS.mem = @s PS.focus.y
scoreboard players operation $focus.oz PS.mem = @s PS.focus.z

tag @e[tag=PS.vector.focused] remove PS.vector.focused

scoreboard players set $focus.g PS.mem 1
scoreboard players set #focus.dist PS.mem 0
scoreboard players operation #focus.dist.max PS.mem = @s PS.focus.max
scoreboard players operation #focus.dist.max PS.mem += #focus.dist.max PS.mem
execute anchored eyes positioned ^ ^ ^ run function ps:focus/vector/recu
execute if score $focus.g PS.mem matches 1 as @e[tag=PS.vector.focused] run function ps:focus/path/setfocus

#focus old
kill @e[tag=PS.focus.old,tag=PS.players.belonging]
tag @e[tag=PS.focus.old_,tag=PS.players.belonging] add PS.focus.old
execute at 0-0110-5053-0-1 run summon marker ~ ~ ~ {Tags:["PS.","PS.focus.old__","PS.focus.old_","PS.players.owned","PS.players.belonging"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players operation @e[tag=PS.focus.old__,tag=PS.players.belonging] PS.players.owner = @s PS.players.id
tag @e[tag=PS.focus.old__,tag=PS.players.belonging] remove PS.focus.old__