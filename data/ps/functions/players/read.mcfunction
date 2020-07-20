#as player
scoreboard players operation @s PS.color.r = @s PS.color.r1
scoreboard players operation @s PS.color.g = @s PS.color.g1
scoreboard players operation @s PS.color.b = @s PS.color.b1
scoreboard players operation @s PS.color.a = @s PS.color.a1

scoreboard players operation $focus.attach PS.mem = @s PS.focus.attach
scoreboard players operation $tools.size PS.mem = @s PS.tools.size
scoreboard players operation $tools.hollow PS.mem = @s PS.tools.hollow

scoreboard players operation $tools.shape.0 PS.mem = @s PS.tools.shape.0
scoreboard players operation $tools.shape.1 PS.mem = @s PS.tools.shape.1
scoreboard players operation $tools.shape.2 PS.mem = @s PS.tools.shape.2
scoreboard players operation $tools.shape.3 PS.mem = @s PS.tools.shape.3
scoreboard players operation $tools.shape.4 PS.mem = @s PS.tools.shape.4
scoreboard players operation $tools.shape.5 PS.mem = @s PS.tools.shape.5
scoreboard players operation $tools.shape.6 PS.mem = @s PS.tools.shape.6
scoreboard players operation $tools.shape.7 PS.mem = @s PS.tools.shape.7
scoreboard players operation $tools.shape.8 PS.mem = @s PS.tools.shape.8
scoreboard players operation $tools.shape.9 PS.mem = @s PS.tools.shape.9

data modify storage ps:players storage.data set from entity @e[tag=PS.players.belonging,tag=PS.players.data,limit=1] ArmorItems[0].tag.PS_players_data
data modify storage ps:players storage.needwrite set value 0b