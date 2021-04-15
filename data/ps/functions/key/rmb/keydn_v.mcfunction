#as player
#input: $focus.g
#output:
#   @s PS.tools.wkpath
#   @s PS.tools.wka
#   @s PS.tools.wkp

scoreboard players operation @s PS.tools.pathing = $focus.g PS.mem
execute if score $focus.g PS.mem matches 1 run scoreboard players operation @s PS.tools.wkpath = @e[tag=PS.vector.focused,limit=1] PS.path.id
execute if score $focus.g PS.mem matches 1 run scoreboard players operation @s PS.tools.wka = @e[tag=PS.vector.focused,limit=1] PS.path.a.id
execute if score $focus.g PS.mem matches 1 run scoreboard players operation @s PS.tools.wkp = @e[tag=PS.vector.focused,limit=1] PS.path.p.id
execute if score $focus.g PS.mem matches 1 run tag @e[tag=PS.path.working] remove PS.path.working
execute if score $focus.g PS.mem matches 1 as @e[tag=PS.path.p] if score @s PS.path.id = @a[tag=PS.players.op,limit=1] PS.tools.wkpath run tag @s add PS.path.working
execute if score @s PS.tools.pathing matches 1 run function ps:key/rmb/keydn