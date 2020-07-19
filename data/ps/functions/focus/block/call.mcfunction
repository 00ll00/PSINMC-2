#as player at player
#outputs:
#   $focus.x/y/z sx/y/z ox/y/z
#   $focus.g: -1:on vacuum 0:none 1:on block 2:on air 3:on marker
#   $focus.f: 0:none 1:x+ 2:x- 3:y+ 4:y- 5:z+ 6:z-

scoreboard players operation $focus.ox PS.mem = @s PS.focus.x
scoreboard players operation $focus.oy PS.mem = @s PS.focus.y
scoreboard players operation $focus.oz PS.mem = @s PS.focus.z

#region
scoreboard players operation #focus.dm PS.mem = @s PS.focus.max
scoreboard players operation #focus.dms PS.mem = #focus.dm PS.mem
scoreboard players operation #focus.dms PS.mem *= #focus.dm PS.mem

execute align xyz positioned ^ ^ ^1 as 0-0110-5053-0-1 run tp ~ ~ ~
execute store result score #focus.dx PS.mem run data get entity 0-0110-5053-0-1 Pos[0] 1290
execute store result score #focus.dy PS.mem run data get entity 0-0110-5053-0-1 Pos[1] 1290
execute store result score #focus.dz PS.mem run data get entity 0-0110-5053-0-1 Pos[2] 1290
execute store result score #focus.temp PS.mem run data get entity @s Pos[0]
scoreboard players operation #focus.temp PS.mem *= $focus.block.const PS.const
scoreboard players operation #focus.dx PS.mem -= #focus.temp PS.mem
execute store result score #focus.temp PS.mem run data get entity @s Pos[1]
scoreboard players operation #focus.temp PS.mem *= $focus.block.const PS.const
scoreboard players operation #focus.dy PS.mem -= #focus.temp PS.mem
execute store result score #focus.temp PS.mem run data get entity @s Pos[2]
scoreboard players operation #focus.temp PS.mem *= $focus.block.const PS.const
scoreboard players operation #focus.dz PS.mem -= #focus.temp PS.mem

execute anchored eyes positioned ^ ^ ^ as 0-0110-5053-0-1 run tp ~ ~ ~
data modify entity 0-0110-5053-0-1 FallDistance set from entity 0-0110-5053-0-1 Pos[0]
data modify entity 0-0110-5053-0-1 Rotation[0] set from entity 0-0110-5053-0-1 FallDistance
execute store result score #focus.bx PS.mem run data get entity 0-0110-5053-0-1 Rotation[0] 1664100
data modify entity 0-0110-5053-0-1 FallDistance set from entity 0-0110-5053-0-1 Pos[1]
data modify entity 0-0110-5053-0-1 Rotation[0] set from entity 0-0110-5053-0-1 FallDistance
execute store result score #focus.by PS.mem run data get entity 0-0110-5053-0-1 Rotation[0] 1664100
data modify entity 0-0110-5053-0-1 FallDistance set from entity 0-0110-5053-0-1 Pos[2]
data modify entity 0-0110-5053-0-1 Rotation[0] set from entity 0-0110-5053-0-1 FallDistance
execute store result score #focus.bz PS.mem run data get entity 0-0110-5053-0-1 Rotation[0] 1664100

scoreboard players operation #focus.bx PS.mem %= $focus.block.const2 PS.const
scoreboard players operation #focus.by PS.mem %= $focus.block.const2 PS.const
scoreboard players operation #focus.bz PS.mem %= $focus.block.const2 PS.const

scoreboard players operation #focus.ax PS.mem = #focus.bx PS.mem
scoreboard players operation #focus.ay PS.mem = #focus.by PS.mem
scoreboard players operation #focus.az PS.mem = #focus.bz PS.mem
scoreboard players operation #focus.ax PS.mem /= #focus.dx PS.mem
scoreboard players operation #focus.ay PS.mem /= #focus.dy PS.mem
scoreboard players operation #focus.az PS.mem /= #focus.dz PS.mem

scoreboard players set #focus.rx PS.mem 1664100
scoreboard players set #focus.ry PS.mem 1664100
scoreboard players set #focus.rz PS.mem 1664100
scoreboard players operation #focus.rx PS.mem /= #focus.dx PS.mem
scoreboard players operation #focus.ry PS.mem /= #focus.dy PS.mem
scoreboard players operation #focus.rz PS.mem /= #focus.dz PS.mem

execute if score #focus.dx PS.mem matches 0.. run scoreboard players operation #focus.ax PS.mem -= #focus.rx PS.mem
execute if score #focus.dy PS.mem matches 0.. run scoreboard players operation #focus.ay PS.mem -= #focus.ry PS.mem
execute if score #focus.dz PS.mem matches 0.. run scoreboard players operation #focus.az PS.mem -= #focus.rz PS.mem

scoreboard players set #focus.s PS.mem 0
scoreboard players set $focus.sx PS.mem 0
scoreboard players set $focus.sy PS.mem 0
scoreboard players set $focus.sz PS.mem 0

scoreboard players set #focus.d PS.mem 0
scoreboard players set $focus.g PS.mem 0
scoreboard players set $focus.f PS.mem 0

execute as 0-0110-5053-0-1 at @s run function ps:focus/block/recu

execute store success score #focus.temp PS.mem at 0-0110-5053-0-1 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score #focus.temp PS.mem matches 0 run scoreboard players set $focus.g PS.mem -1

execute store result score $focus.x PS.mem run data get entity 0-0110-5053-0-1 Pos[0]
execute store result score $focus.y PS.mem run data get entity 0-0110-5053-0-1 Pos[1]
execute store result score $focus.z PS.mem run data get entity 0-0110-5053-0-1 Pos[2]

scoreboard players operation @s PS.focus.x = $focus.x PS.mem
scoreboard players operation @s PS.focus.y = $focus.y PS.mem
scoreboard players operation @s PS.focus.z = $focus.z PS.mem
#endregion

#set cursor (old)
#execute as @e[tag=PS.focus.cursor,tag=PS.players.belonging] run function ps:focus/block/cursor
#execute at 0-0110-5053-0-1 run tp @e[tag=PS.focus.cursor,tag=PS.players.belonging] ~.5 ~.5 ~.5

#set cursor
execute at 0-0110-5053-0-1 run summon falling_block ~.5 ~ ~.5 {Glowing:1b,BlockState:{Name:"minecraft:glass"},NoGravity:1b}

#surface fix
execute if score @s PS.focus.fix matches 1 if score $focus.g PS.mem matches 1 as 0-0110-5053-0-1 at @s run function ps:focus/block/fix
execute if score @s PS.focus.fix matches 0 as 0-0110-5053-0-1 at @s run tp ~.5 ~.5 ~.5 

#focus old
kill @e[tag=PS.focus.old,tag=PS.players.belonging]
tag @e[tag=PS.focus.old_,tag=PS.players.belonging] add PS.focus.old
execute at 0-0110-5053-0-1 run summon area_effect_cloud ~ ~ ~ {Tags:["PS.focus.old__","PS.focus.old_","PS.players.owned","PS.players.belonging"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players operation @e[tag=PS.focus.old__,tag=PS.players.belonging] PS.players.owner = @s PS.players.id
tag @e[tag=PS.focus.old__,tag=PS.players.belonging] remove PS.focus.old__