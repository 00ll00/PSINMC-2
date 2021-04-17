#as marker

scoreboard players set @s PS.color.r 7
scoreboard players set @s PS.color.g 0
scoreboard players set @s PS.color.b 7
scoreboard players operation @s PS.players.owner = @a[tag=PS.players.op] PS.players.id

execute as @s run function ps:color/getitem/call
team join ps.light_purple @s