#as player
scoreboard players set @s PS.key.lmb 0

execute if score @s PS.menu.show matches 1 as @e[tag=PS.menu.focused,tag=PS.players.belonging,tag=PS.menu.event.lmb] run function ps:menu/events/lmb/call
