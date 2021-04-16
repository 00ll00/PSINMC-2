#as path.p
#input: @s PS.path.p.x/y/z
#output:
#   @a[players.op] PS.focus.x/y/z
#   $focus.x/y/z
#   $focus.g = 1
#   focus marker

scoreboard players operation @a[tag=PS.players.op] PS.focus.x = @s PS.path.p.x
scoreboard players operation @a[tag=PS.players.op] PS.focus.y = @s PS.path.p.y
scoreboard players operation @a[tag=PS.players.op] PS.focus.z = @s PS.path.p.z
scoreboard players operation $focus.x PS.mem = @s PS.path.p.x
scoreboard players operation $focus.y PS.mem = @s PS.path.p.y
scoreboard players operation $focus.z PS.mem = @s PS.path.p.z
scoreboard players set $focus.g PS.mem 1

tp 0-0110-5053-0-1 @s

#set cursor
execute at 0-0110-5053-0-1 align xyz run summon falling_block ~.5 ~ ~.5 {Glowing:1b,BlockState:{Name:"minecraft:glass"},NoGravity:1b}