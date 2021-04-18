#as player at player
#outputs:
#   $focus.x/y/z ox/y/z
#   $focus.g: -1:on vacuum 0:none 1:on block 2:on air 3:on marker

scoreboard players operation $focus.ox PS.mem = @s PS.focus.x
scoreboard players operation $focus.oy PS.mem = @s PS.focus.y
scoreboard players operation $focus.oz PS.mem = @s PS.focus.z

scoreboard players operation #focus.dm PS.mem = @s PS.focus.max

scoreboard players set #focus.d PS.mem 0
scoreboard players set $focus.g PS.mem 1

execute anchored eyes positioned ^ ^ ^ run function ps:focus/blocka/recu

execute store success score #focus.temp PS.mem at 0-0110-5053-0-1 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score #focus.temp PS.mem matches 0 run scoreboard players set $focus.g PS.mem -1
execute if score #focus.temp PS.mem matches 3 run scoreboard players set $focus.g PS.mem 3
execute if score $focus.g PS.mem matches 1 at 0-0110-5053-0-1 if block ~ ~ ~ #ps:air run scoreboard players set $focus.g PS.mem 2

execute store result score $focus.x PS.mem run data get entity 0-0110-5053-0-1 Pos[0]
execute store result score $focus.y PS.mem run data get entity 0-0110-5053-0-1 Pos[1]
execute store result score $focus.z PS.mem run data get entity 0-0110-5053-0-1 Pos[2]

scoreboard players operation @s PS.focus.x = $focus.x PS.mem
scoreboard players operation @s PS.focus.y = $focus.y PS.mem
scoreboard players operation @s PS.focus.z = $focus.z PS.mem

#set cursor (old)
#execute as @e[tag=PS.focus.cursor,tag=PS.players.belonging] run function ps:focus/block/cursor
#execute at 0-0110-5053-0-1 run tp @e[tag=PS.focus.cursor,tag=PS.players.belonging] ~.5 ~.5 ~.5

#set cursor
execute at 0-0110-5053-0-1 align xyz run summon falling_block ~.5 ~-.01 ~.5 {Glowing:1b,BlockState:{Name:"minecraft:glass"},NoGravity:1b}

#position fix
execute if score @s PS.focus.fix matches 0 as 0-0110-5053-0-1 at @s align xyz run tp ~.5 ~.5 ~.5 

#focus old
kill @e[tag=PS.focus.old,tag=PS.players.belonging]
tag @e[tag=PS.focus.old_,tag=PS.players.belonging] add PS.focus.old
execute at 0-0110-5053-0-1 run summon marker ~ ~ ~ {Tags:["PS.","PS.focus.old__","PS.focus.old_","PS.players.owned","PS.players.belonging"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players operation @e[tag=PS.focus.old__,tag=PS.players.belonging] PS.players.owner = @s PS.players.id
tag @e[tag=PS.focus.old__,tag=PS.players.belonging] remove PS.focus.old__