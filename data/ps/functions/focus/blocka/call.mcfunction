#as player at player
#outputs:
#   x,y,z ox,oy,oz
#   get: -1:on vacuum 0:none 1:on block 2:on air

scoreboard players operation $focus.ox PS.mem = @s PS.focus.x
scoreboard players operation $focus.oy PS.mem = @s PS.focus.y
scoreboard players operation $focus.oz PS.mem = @s PS.focus.z

scoreboard players operation $focus.dm PS.mem = @s PS.focus.max

scoreboard players set $focus.d PS.mem 0
scoreboard players set $focus.g PS.mem 1

execute anchored eyes positioned ^ ^ ^ run function ps:focus/blocka/recu

execute store success score #focus.temp PS.mem at 0-0110-5053-0-1 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score #focus.temp PS.mem matches 0 run scoreboard players set $focus.g PS.mem -1
execute if score $focus.g PS.mem matches 1 at 0-0110-5053-0-1 if block ~ ~ ~ #ps:air run scoreboard players set $focus.g PS.mem 2

execute store result score $focus.x PS.mem run data get entity 0-0110-5053-0-1 Pos[0]
execute store result score $focus.y PS.mem run data get entity 0-0110-5053-0-1 Pos[1]
execute store result score $focus.z PS.mem run data get entity 0-0110-5053-0-1 Pos[2]

#set cursor (old)
#execute as @e[tag=PS.focus.cursor,tag=PS.players.belonging] run function ps:focus/block/cursor
#execute at 0-0110-5053-0-1 run tp @e[tag=PS.focus.cursor,tag=PS.players.belonging] ~.5 ~.5 ~.5

#set cursor
execute at 0-0110-5053-0-1 align xyz run summon falling_block ~.5 ~ ~.5 {Glowing:1b,BlockState:{Name:"minecraft:glass"},NoGravity:1b}

#focus old
kill @e[tag=PS.focus.old,tag=PS.players.belonging]
tag @e[tag=PS.focus.old_,tag=PS.players.belonging] add PS.focus.old
execute at 0-0110-5053-0-1 run summon armor_stand ~ ~ ~ {Tags:["PS.focus.old__","PS.focus.old_","PS.players.owned","PS.players.belonging"],Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=PS.focus.old__,tag=PS.players.belonging] PS.players.owner = @s PS.players.id
tag @e[tag=PS.focus.old__,tag=PS.players.belonging] remove PS.focus.old__