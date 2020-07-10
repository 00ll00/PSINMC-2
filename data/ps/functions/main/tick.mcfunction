#main clock
scoreboard players add $clock.tick PS.mem 1

#clear invalid markers
execute as @e[tag=PS.players.owned] run function ps:players/clear_i

#check markers
execute unless entity 0-0110-5053-0-1 run summon armor_stand ~ ~ ~ {UUID:[I;0,17846355,0,1],Tags:["PS.focus.marker"],Marker:1b,Invisible:1b}

#progress for each player
execute as @a[tag=PS.op,gamemode=creative] at @s run function ps:players/tick

#cursor menu
kill @e[tag=PS.menu.cursor]
execute at @e[tag=PS.menu.focused] run summon snowball ~ ~.2 ~ {Tags:["PS.menu.cursor"],NoGravity:1b,Glowing:1b}

#clear tool items
kill @e[type=item,nbt={Item:{tag:{PS_tool:1b}}}]

#clear color raw
execute as @e[tag=PS.color.raw] if score @s PS.color.rawid > $color.maxraw PS.const run kill @s

#remove tag color.raw.new
tag @e[tag=PS.color.raw.new] remove PS.color.raw.new